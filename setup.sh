#!/bin/sh

# install homeshick
echo "Installing homeshick..."
if ! git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
then
    echo "E: Unable to install homeshick."
    exit 1
fi

# Make homeshick accessible
if ! source "$HOME/.homesick/repos/homeshick/homeshick.sh"
then
    echo "E: Unable to find homeshick after installation"
    exit 1
fi

# fetch and install castle settings
echo "Fetching dotfiles with homeshick..."
if ! homeshick clone dandesousa/castle
then
    echo "E: Unable to pull dotfiles from github"
    exit 1
fi

# install vim bundles / settings
echo "Installing vim settings..."
if ! vim -u .vim/bundles.vim +BundleInstall +qall
then
    echo "E: Unable to install vim plugins."
    exit 1
fi

# install oh-my-zsh
echo "Installing oh-my-zsh..."

# install custom zsh themes
