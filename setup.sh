#!/bin/bash
# Move values to some machine using a unix distro


# Vim pathogen files
if [[ ! -d "$HOME/.vim" ]]
then
    echo "You don't have the directories for pathogen. Will install there."
    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
        curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
else
    echo "Looks like you have the required vim files, nice!"
fi

# Oh my zsh files
if [[ ! -d "$HOME/.oh-my-zsh/" ]]
then 
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
else
    echo "You have oh my zsh, niceeee!"
fi

if [[ -f "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]]
then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
else
    echo "Looks like you have autosuggestions, nice!"
fi

# Add Brew for a new laptop
if [[ ! `which brew` ]]
then
    echo "install brew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Rbenv for oh my zsh
if [[ ! `which rbenv` ]]
then
    echo "installing rbenv"
    brew install rbenv
    rbenv init
fi

# Add emacs
if [[ ! `which emacs` ]]
then
    echo "installing emacs"
    brew tap daviderestivo/emacs-head
    brew install emacs-head --HEAD --with-cocoa --with-imagemagick --with-jansson
    ln -s /usr/local/opt/emacs-head/Emacs.app /Applications
fi

# Add spacemacs, make sure to use the develop branch
if [[ ! -d "$HOME/.emacs.d"]]
    echo "installing spacemacs"
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
fi

echo "Move vim file to home directory?"
cp -i vim/.vimrc ~/.vimrc

echo "Move spacemacs file to home directory?"
cp -i emacs/.spacemacs ~/.spacemacs

echo "Move zsh file to zsh home?"
cp -i zsh/.zshrc ~/.zshrc

