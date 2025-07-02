# .config

## Setup

### clone this repo
```sh
cd ~ && rm -rf .config && git clone https://github.com/Dwarven/.config.git
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
brew install sevenzip ouch nushell vlc ripgrep starship font-meslo-lg-nerd-font yazi
```

### [iTerm2](https://iterm2.com)
```sh
brew install font-meslo-lg-nerd-font
```

`Preferences` -> `General` -> `Preferences` -> `Load preferences from a custom folder or URL`, use the URL: https://github.com/Dwarven/.config/raw/master/iTerm2_Preferences/com.googlecode.iterm2.plist

### [WezTerm](https://wezterm.org)
```sh
brew install --cask wezterm
```

### [Rectangle](https://rectangleapp.com)
```sh
brew install --cask rectangle
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
