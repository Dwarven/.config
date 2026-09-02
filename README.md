# .config

## Setup

### clone this repo
```sh
cd ~ && rm -rf .config && git clone https://github.com/Dwarven/.config.git
```

### [Switchy](https://github.com/zero-peak/ZeroOmega)
[Chrome](https://chromewebstore.google.com/detail/pfnededegaaopdmhkdmcofjmoldfiped)、[Edge](https://microsoftedge.microsoft.com/addons/detail/zeroomegaproxy-switchy-/dmaldhchmoafliphkijbfhaomcgglmgd)、[Firefox](https://addons.mozilla.org/en-US/firefox/addon/zeroomega)
```
https://github.com/Dwarven/.config/raw/master/switchy.bak
https://fastly.jsdelivr.net/gh/Dwarven/.config@master/switchy.bak
```

### [oh-my-zsh](https://ohmyz.sh)
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -sfv .config/zsh/zshrc.ohmyz.sh ~/.zshrc
```

### [ZIM:FW](https://zimfw.sh)
```sh
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
ln -sfv .config/zsh/zimrc.zimfw.sh ~/.zimrc
ln -sfv .config/zsh/zshrc.zimfw.sh ~/.zshrc
zimfw install
```

### [lazygit](https://github.com/jesseduffield/lazygit)
```sh
ln -sfv ~/.config/lazygit/config.yml ~/Library/Application\ Support/lazygit
```

### [yazi](https://yazi-rs.github.io)
```sh
brew install sevenzip ouch nushell vlc ripgrep starship font-hack-nerd-font
```

### [iTerm2](https://iterm2.com)
```sh
brew install --cask iterm2 font-hack-nerd-font
```

`Preferences` -> `General` -> `Preferences` -> `Load preferences from a custom folder or URL`, use the URL: https://github.com/Dwarven/.config/raw/master/iTerm2_Preferences/com.googlecode.iterm2.plist

### [Ghostty](https://ghostty.org)
```sh
brew install --cask ghostty
ln -sfv ~/.config/ghostty/config.ghostty ~/Library/Application\ Support/com.mitchellh.ghostty
```

### [WezTerm](https://wezterm.org)
```sh
brew install --cask wezterm
```

### [Rectangle](https://rectangleapp.com)
```sh
brew install --cask rectangle
```

### [Sublime Text](https://www.sublimetext.com)

```sh
ln -sfv ~/.config/Sublime\ Text/Packages/User/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text/Packages/User
```

### [OpenInTerminal-Lite、OpenInEditor-Lite](https://github.com/Ji4n1ng/OpenInTerminal)
```sh
brew install --cask openinterminal-lite openineditor-lite
```

##### OpenInTerminal-Lite
- switch to [Terminal](https://support.apple.com/guide/terminal)
```sh
defaults write wang.jianing.app.OpenInTerminal-Lite LiteDefaultTerminal Terminal
```
- switch to [iTerm2](https://iterm2.com)
```sh
defaults write wang.jianing.app.OpenInTerminal-Lite LiteDefaultTerminal iTerm
```

##### OpenInEditor-Lite
- switch to [Sublime Text](https://www.sublimetext.com)
```sh
defaults write wang.jianing.app.OpenInEditor-Lite LiteDefaultEditor Sublime\ Text
```
- switch to [Visual Studio Code](https://code.visualstudio.com)
```sh
defaults write wang.jianing.app.OpenInEditor-Lite LiteDefaultEditor Visual\ Studio\ Code
```

### [Claude Code](https://claude.com/product/claude-code)

```sh
brew install --cask claude-code
rm -rf ~/.claude && ln -sv .config/claude ~/.claude
```

### [Codex](https://openai.com/codex)

```sh
brew install --cask codex
mkdir -p ~/.codex && ln -sfv ../.config/codex/AGENTS.md ~/.codex/AGENTS.md && ln -sfv ../.config/codex/config.toml ~/.codex/config.toml
```
