![HEADER](https://github.com/bmo-at/public-dotfiles/blob/master/header.png)

## About

This repo contains my dotfiles that make my terminal what it is: It's my best config for [Debian on the Windows Subsystem for Linux](https://www.microsoft.com/store/productId/9MSVKQC78PK6) in conjunction with the beautiful and performant new [Windows Terminal](https://www.microsoft.com/store/productId/9N0DX20HK701).

Within this repo you'll find all the config files for the the Z Shell with the Oh-My-ZSH framework for plugin installation. As a theme I have chosen [powerlevel10k](https://github.com/romkatv/powerlevel10k), because it looks terrific and is blazing fast.

The colors theme for the Windows Terminal is the beautiful OneDark Pro.

## Installation

Firstly execute the .oh-my-zsh-setup.sh with sudo priviliges. This will install ZSH on your system and then install [Oh-My-ZSH](https://github.com/robbyrussell/oh-my-zsh). 

Next, execute the .oh-my-zsh-setup-plugin.sh: This will install 4 plugins (powerlevel10k, zsh-completions,zsh-autosuggestions and zsh-syntax-highlighting).

Next, install the Nerdfont of your choice (I recommend Hack NF, until a Cascadia Code NF is available) from here: [Nerd-Fonts](https://github.com/ryanoasis/nerd-fonts) (Get the fonts from the "Rebuilds fonts for v2.1.0 alpha (pre-release) WIP" commit from the master branch instead of the releases page for optimal compatability with Windows Terminal!)

Merge your Windows Terminal config with the file from .config/windowsTerminal.

Now you're done! Congrats!

## Screenshot

![SCREENSHOT](https://github.com/bmo-at/public-dotfiles/blob/master/screenshot.png)
