# .config

## Setup

### clone this repo
```sh
cd ~ && rm -rf .config && git clone https://github.com/Dwarven/.config.git
```

### Oh My Zsh
```sh
ln -sfv .config/zsh/zshrc ~/.zshrc
```

### lazygit
```sh
ln -sfv ~/.config/lazygit/config.yml ~/Library/Application\ Support/lazygit
```

### iTerm2

`Preferences` -> `General` -> `Preferences` -> `Load preferences from a custom folder or URL`, use the URL: https://github.com/Dwarven/.config/raw/master/iTerm2_Preferences/com.googlecode.iterm2.plist

# auto suggestions

## Installation

### Manual (Git Clone)

1. Clone this repository somewhere on your machine. This guide will assume `~/.zsh/zsh-autosuggestions`.

    ```sh
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
    ```

2. Add the following to your `.zshrc`:

    ```sh
    source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
    ```

3. Start a new terminal session.

### Antigen

1. Add the following to your `.zshrc`:

    ```sh
    antigen bundle zsh-users/zsh-autosuggestions
    ```

2. Start a new terminal session.

### Oh My Zsh

1. Clone this repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`)

    ```sh
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    ```

2. Add the plugin to the list of plugins for Oh My Zsh to load (inside `~/.zshrc`):

    ```sh
    plugins=(zsh-autosuggestions)
    ```

3. Start a new terminal session.

### Arch Linux

1. Install [`zsh-autosuggestions`](https://www.archlinux.org/packages/community/any/zsh-autosuggestions/) from the `community` repository.

    ```sh
    pacman -S zsh-autosuggestions
    ```

    or, to use a package based on the `master` branch, install [`zsh-autosuggestions-git`](https://aur.archlinux.org/packages/zsh-autosuggestions-git/) from the [AUR](https://wiki.archlinux.org/index.php/Arch_User_Repository).

2. Add the following to your `.zshrc`:

    ```sh
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    ```

3. Start a new terminal session.

### macOS via Homebrew
1. Install the `zsh-autosuggestions` package using [Homebrew](https://brew.sh/).

    ```sh
    brew install zsh-autosuggestions
    ```

2. Add the following to your `.zshrc`:

    ```sh
    source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    ```

3. Start a new terminal session.


## Syntax highlighting

```
brew install zsh-syntax-highlighting
```

If you do not have or do not like homebrew, follow [the installation instructions](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) instead.

After installation, add the following line

```
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

to **the end** of your `.zshrc` file. After that, it's best to restart your terminal. Sourcing your `~/.zshrc` does not seem to work well with this plugin.
