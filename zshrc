SAVEHIST=500
HISTFILE=~/.zsh_history

# zplug
export ZPLUG_HOME=$HOME/.zplug
source $ZPLUG_HOME/init.zsh

zplug "dracula/zsh", as:theme

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load


# local only configuration
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local


# aliases
alias ls="ls --color=auto"
alias dc=docker-compose
alias dcd="docker-compose -f docker-compose-data.yaml"

alias vim="nvim"

# add ~/bin and ~/dotfiles/bin to path
export PATH="$PATH:$HOME/bin:$HOME/dotfiles/bin"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# initialize hooks
eval "$(direnv hook zsh)"

# initialize pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# initialize fnm
eval "$(fnm env --use-on-cd)"
