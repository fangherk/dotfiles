# Path to your oh-my-zsh installation.
# Should double check this path if on non OSX box
export ZSH=/Users/herk/.oh-my-zsh

ZSH_DISABLE_COMPFIX=true
ZSH_THEME="gallois"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration -> can also move this to ~/.zshenv

# Adding poetry for python
export PATH="$HOME/.poetry/bin:$PATH"

# Testing some older mysql code and moving them away
# export PATH="/usr/local/opt/mysql@5.5/bin:$PATH"

# Lets use pyenv
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
# export PATH="$HOME/.poetry/bin:$PATH"

# This only works if fzf is installed
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Custom Paths
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$PATH:/usr/local/bin

# Custom aliases - ubuntu
# alias setclip="xclip -selection c"
# alias getclip="xclip -selection c -o"

# Personal aliases in .oh-my-zsh/custom/aliases.zsh
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

