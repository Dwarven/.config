# .config

## Setup

### clone this repo
```sh
cd ~ && rm -rf .config && git clone https://github.com/Dwarven/.config.git
```

### [ZIM:FW](https://zimfw.sh)
```sh
ln -sfv .config/zsh/zimrc ~/.zimrc
ln -sfv .config/zsh/zshrc ~/.zshrc
zimfw install
```

### lazygit
```sh
ln -sfv ~/.config/lazygit/config.yml ~/Library/Application\ Support/lazygit
```

### iTerm2

`Preferences` -> `General` -> `Preferences` -> `Load preferences from a custom folder or URL`, use the URL: https://github.com/Dwarven/.config/raw/master/iTerm2_Preferences/com.googlecode.iterm2.plist
