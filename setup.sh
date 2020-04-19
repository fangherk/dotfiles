#!/bin/bash
# Move values to some machine using a unix distro

if [[ -f "~/.vim/autoload" ]] && [[ -f "~/.vim/bundle" ]]
then
    echo "You don't have the directories for pathogen. Will install there."
    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
        curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
else
    echo "Looks like you have the required vim files, nice!"
fi

if [[ -f "~/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]]
then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
else
    echo "Looks like you have autosuggestions, nice!"
fi

echo "Move vim file to home directory?"
cp -i vim/.vimrc ~/.vimrc

echo "Move spacemacs file to home directory?"
cp -i emacs/.spacemacs ~/.spacemacs

echo "Move zsh file to zsh home?"
cp -i zsh/.zshrc ~/.zshrc
