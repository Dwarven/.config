# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vi="vim"
alias ll="ls -alF"
alias llh="ls -alFh"
alias dns="cat /etc/resolv.conf"
alias flush-mac-dns="[[ \`uname -a\` == Darwin* ]] && bash -c 'sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache'"
alias allow-mac-apps-from-anywhere="[[ \`uname -a\` == Darwin* ]] && sudo spctl --master-disable"

#
# ranger
#
alias ra='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

#
# My Git Functions
#
alias git-reload-local-remote-branchs="(git branch -r | grep --color=never 'origin/feature' | xargs git branch -d -r) && (git branch -r | grep --color=never 'upstream/feature' | xargs git branch -d -r) && (git fetch --all)"
alias git-delete-origin-feature-branchs="git branch -r| grep --color=never 'origin' | grep -v -E 'master|develop' | sed 's/origin\///g' | xargs -I {} git push origin :{}"
alias git-delete-local-tags="git tag | xargs git tag -d"
alias git-log-file="git log -- file"
alias ggc="rm -f .git/refs/remotes/origin/HEAD && git fsck && git gc --prune=now"
alias grom='git reset origin/$(git_current_branch) --mixed'
alias gros='git reset origin/$(git_current_branch) --soft'
alias gruh='git rev-parse --abbrev-ref --symbolic-full-name @{u} >/dev/null 2>&1 && git reset --hard @{u} || echo "\e[1;31mNo tracking remote branch. Skipping reset.\e[0m"'
alias grum='git rev-parse --abbrev-ref --symbolic-full-name @{u} >/dev/null 2>&1 && git reset  --mixed @{u} || echo "\e[1;31mNo tracking remote branch. Skipping reset.\e[0m"'
alias grus='git rev-parse --abbrev-ref --symbolic-full-name @{u} >/dev/null 2>&1 && git reset  --soft @{u} || echo "\e[1;31mNo tracking remote branch. Skipping reset.\e[0m"'

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
bindkey -M viins -s '^Y' '\eddiyz^J'
bindkey -M vicmd -s '^Y' 'ddiyz^J'

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
bindkey -M viins -s '^G' '\eddilazygit^J'
bindkey -M vicmd -s '^G' 'ddilazygit^J'

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
bindkey -M vicmd '^A' beginning-of-line
bindkey -M viins '^E' end-of-line
bindkey -M vicmd '^E' end-of-line

# Bind k/j keys to search history by prefix in vi normal mode
bindkey -M vicmd 'k' up-line-or-beginning-search
bindkey -M vicmd 'j' down-line-or-beginning-search

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
