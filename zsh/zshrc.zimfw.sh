# Start configuration added by Zim install {{{
#
# User configuration sourced by interactive shells
#

# -----------------
# Zsh configuration
# -----------------

#
# History
#

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

#
# Input/output
#

# Set editor default keymap to emacs (`-e`) or vi (`-v`)
# bindkey -e

# Prompt for spelling correction of commands.
#setopt CORRECT

# Customize spelling correction prompt.
#SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}

# -----------------
# Zim configuration
# -----------------

# Use degit instead of git as the default tool to install and update modules.
#zstyle ':zim:zmodule' use 'degit'

# --------------------
# Module configuration
# --------------------

#
# git
#

# Set a custom prefix for the generated aliases. The default prefix is 'G'.
zstyle ':zim:git' aliases-prefix 'g'

#
# input
#

# Append `../` to your input for each `.` you type after an initial `..`
#zstyle ':zim:input' double-dot-expand yes

#
# termtitle
#

# Set a custom terminal title format using prompt expansion escape sequences.
# See http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Simple-Prompt-Escapes
# If none is provided, the default '%n@%m: %~' is used.
#zstyle ':zim:termtitle' format '%1~'

#
# zsh-autosuggestions
#

# Disable automatic widget re-binding on each precmd. This can be set when
# zsh-users/zsh-autosuggestions is the last module in your ~/.zimrc.
ZSH_AUTOSUGGEST_MANUAL_REBIND=1

# Customize the style that the suggestions are shown with.
# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=242'

#
# zsh-syntax-highlighting
#

# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Customize the main highlighter styles.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md#how-to-tweak-it
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[comment]='fg=242'

# ------------------
# Initialize modules
# ------------------

ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  if (( ${+commands[curl]} )); then
    curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  else
    mkdir -p ${ZIM_HOME} && wget -nv -O ${ZIM_HOME}/zimfw.zsh \
        https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
  fi
fi
# Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]]; then
  source ${ZIM_HOME}/zimfw.zsh init
fi
# Initialize modules.
source ${ZIM_HOME}/init.zsh

# ------------------------------
# Post-init module configuration
# ------------------------------

#
# zsh-history-substring-search
#

zmodload -F zsh/terminfo +p:terminfo
# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
for key ('^[[A' '^P' ${terminfo[kcuu1]}) bindkey ${key} history-substring-search-up
for key ('^[[B' '^N' ${terminfo[kcud1]}) bindkey ${key} history-substring-search-down
for key ('k') bindkey -M vicmd ${key} history-substring-search-up
for key ('j') bindkey -M vicmd ${key} history-substring-search-down
unset key
# }}} End configuration added by Zim install

# ------------------------------
# User configuration
# ------------------------------

# asciiship theme patch
# git_info format from https://github.com/zimfw/sorin
typeset -gA git_info
if (( ${+functions[git-info]} )); then
  # Set git-info parameters.
  zstyle ':zim:git-info' verbose yes
  zstyle ':zim:git-info:action' format '%F{default}:%F{1}%s'
  zstyle ':zim:git-info:ahead' format ' %F{11}⬆'
  zstyle ':zim:git-info:behind' format ' %F{10}⬇'
  zstyle ':zim:git-info:branch' format ' %F{12}git:(%F{9}%b%F{12})'
  zstyle ':zim:git-info:commit' format ' %F{3}%c'
  zstyle ':zim:git-info:indexed' format ' %F{2}+'
  zstyle ':zim:git-info:unindexed' format ' %F{4}!'
  zstyle ':zim:git-info:position' format ' %F{5}%p'
  zstyle ':zim:git-info:stashed' format ' %F{6}\$'
  zstyle ':zim:git-info:untracked' format ' %F{11}?'
  zstyle ':zim:git-info:keys' format \
    'rprompt' '%b$(coalesce %p %c)%s%A%B%S%i%I%u'

  # Add hook for calling git-info before each command.
  autoload -Uz add-zsh-hook && add-zsh-hook precmd git-info
fi
PS1=$'%{\e[1m%}${SSH_TTY:+"%m "}${VIRTUAL_ENV:+"${VIRTUAL_ENV:t} "}%(1j.%{\E[12m%}.)%F{%(?.10.9)}%(!.#.➜)%f%{\E[0m%}  %F{14}%1~${(e)git_info[rprompt]}%f%{\e[22m%} '
unset RPS1

# Aloxaf/fzf-tab
zstyle ':fzf-tab:*' fzf-flags -i

# alias
alias vi="vim"
alias ll="ls -alF"
alias llh="ls -alFh"
alias dns="cat /etc/resolv.conf"
alias flush-mac-dns="[[ \`uname -a\` == Darwin* ]] && bash -c 'sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache'"
alias allow-mac-apps-from-anywhere="[[ \`uname -a\` == Darwin* ]] && sudo spctl --master-disable"

alias gwRu='git rev-parse --abbrev-ref --symbolic-full-name @{u} >/dev/null 2>&1 && git reset --hard @{u} || echo "\e[1;31mNo tracking remote branch. Skipping reset.\e[0m"'
alias gwru='git rev-parse --abbrev-ref --symbolic-full-name @{u} >/dev/null 2>&1 && git reset  --soft @{u} || echo "\e[1;31mNo tracking remote branch. Skipping reset.\e[0m"'
alias glgg='git log --graph'

#
# ranger
#
alias ra='ranger --choosedir=$HOME/.rangerdir; cd "$(cat $HOME/.rangerdir)"'

#
# yazi
#
function yz() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}
bindkey -M main  -s '^Y' 'yz^J'
bindkey -M viins -s '^Y' 'yz^J'
bindkey -M vicmd -s '^Y' 'iyz^J'

#
# Cleanup .DS_Store
#
alias cleanup_ds_store="find . -name .DS_Store -print0 | xargs -0 rm -rf"

#
# make zip
#
alias make_zip='cleanup_ds_store && zip -r "${PWD##*/}".zip ./'

#
# tmux
#
alias tmn="tmux new -s"
alias tma="tmux attach-session"

#
# lazygit
#
bindkey -M main  -s '^G' 'lazygit^J'
bindkey -M viins -s '^G' 'lazygit^J'
bindkey -M vicmd -s '^G' 'ilazygit^J'

#
# edit-command-line
#
# bindkey '^v' edit-command-line
bindkey -v
function zle-keymap-select {
	if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
		echo -ne '\e[1 q'
	elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} = '' ]] || [[ $1 = 'beam' ]]; then
		echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[5 q'

# Use beam shape cursor for each new prompt.
preexec() {
	echo -ne '\e[5 q'
}

_fix_cursor() {
	echo -ne '\e[5 q'
}
precmd_functions+=(_fix_cursor)

KEYTIMEOUT=1

bindkey -M viins '^A' beginning-of-line
bindkey -M viins '^E' end-of-line

bindkey -M viins "${terminfo[kcuu1]}" history-beginning-search-backward
bindkey -M viins "${terminfo[kcud1]}" history-beginning-search-forward

#
# brew
#
if [ "$(uname)" = "Darwin" ]; then
  export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"
  if [ "$(which brew)" = "brew not found" ] && [ "$(uname -m)" = "arm64" ]; then
    export PATH="$PATH:/opt/homebrew/bin"
  fi
fi

#
# fzf
#
# brew install ccat fzf the_silver_searcher
#
export FZF_DEFAULT_OPTS='--preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_COMPLETION_TRIGGER='\'
export FZF_TMUX=1
export FZF_TMUX_HEIGHT='80%'
export FZF_PREVIEW_COMMAND='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500'
[ -f ~/.config/zsh/fzf.zsh ] && source ~/.config/zsh/fzf.zsh

[ "$(uname)" = "Linux" ] && [ -f /etc/zsh_command_not_found ] && source /etc/zsh_command_not_found

[ -f ~/.machine_specific_rc ] && . ~/.machine_specific_rc

[ -f ~/.intellij_rc ] && . ~/.intellij_rc
