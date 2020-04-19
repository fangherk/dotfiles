# Path to your oh-my-zsh installation.
export ZSH=/home/herk/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    battery
    tmux
    plugins
)

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
export PATH="$HOME/.poetry/bin:$PATH"

# This only works if fzf is installed
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Custom Paths
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=$PATH:/usr/local/sicstus4.4.0/bin
# Local path
export PATH=$PATH:/usr/local/bin
# export PATH=$PATH:/usr/local

# Custom aliases
alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"

# Personal aliases in .oh-my-zsh/custom/aliases.zsh
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
