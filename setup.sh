#!/bin/bash

# install homeshick
HOMESHICK_DIR="$HOME/.homesick/repos/homeshick"
echo "Installing homeshick..."
if [ ! -d "${HOMESHICK_DIR}" ]
then
    if ! git clone git://github.com/andsens/homeshick.git "${HOMESHICK_DIR}"
    then
        echo "E: Unable to install homeshick."
        exit 1
    fi
else
    echo "Skipping homeshick installation, directory already exists"
fi

# Make homeshick accessible
if ! . "${HOMESHICK_DIR}/homeshick.sh"
then
    echo "E: Unable to find homeshick after installation"
    exit 1
fi

# fetch and install castle settings
CASTLE_NAME="dandesousa/castle"
echo "Fetching dotfiles with homeshick..."
if ! homeshick clone -f "${CASTLE_NAME}"
then
    echo "E: Unable to pull dotfiles from github"
    exit 1
fi

# install vim bundles / settings
echo "Installing vim settings..."
if ! vim -u "$HOME/.vim/bundles.vim" +BundleInstall +qall
then
    echo "E: Unable to install vim plugins."
    exit 1
fi

# install oh-my-zsh
echo "Installing oh-my-zsh..."
if ! git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
then
    echo "E: Unable to install oh-my-zsh"
    exit 1
fi

echo "Changing default shell to zsh..."
if ! chsh -s /bin/zsh
then
    echo "E: Unable to change shell to zsh"
    exit 1
fi

# install custom zsh themes
ZSH_THEME_DIR="$HOME/.oh-my-zsh/themes"
curl -s https://raw.githubusercontent.com/oskarkrawczyk/honukai-iterm/master/honukai.zsh-theme > "${ZSH_THEME_DIR}/honukai.zsh-theme"

# launch zsh
zsh
