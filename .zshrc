# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/tobias/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="typewritten"

export TYPEWRITTEN_SYMBOL="λ"
export TYPEWRITTEN_CURSOR="block"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# set go path
export GOPATH="${HOME}/.go"
export PATH="$GOPATH/bin:$PATH"

# some nice to have aliases
alias l='ls -lAhGp'
alias ls='ls -lAhGp'

alias c='code'
alias py='python3'
alias pip='python3 -m pip'
alias pip3='pip'


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/bit bit

export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

