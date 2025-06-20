# .config

## Setup

### clone this repo
```sh
cd ~ && rm -rf .config && git clone https://github.com/Dwarven/.config.git
```

### [ZIM:FW](https://zimfw.sh)
```sh
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
ln -sfv .config/zsh/zimrc ~/.zimrc
ln -sfv .config/zsh/zshrc ~/.zshrc
zimfw install
```

### [lazygit](https://github.com/jesseduffield/lazygit)
```sh
ln -sfv ~/.config/lazygit/config.yml ~/Library/Application\ Support/lazygit
```

### [yazi](https://yazi-rs.github.io)
```sh
brew install ouch nushell vlc ripgrep starship font-meslo-lg-nerd-font yazi
```

### [iTerm2](https://iterm2.com)
```sh
brew install font-meslo-lg-nerd-font
```

`Preferences` -> `General` -> `Preferences` -> `Load preferences from a custom folder or URL`, use the URL: https://github.com/Dwarven/.config/raw/master/iTerm2_Preferences/com.googlecode.iterm2.plist
