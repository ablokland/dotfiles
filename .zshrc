#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export EDITOR='/usr/bin/vim'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export GEM_HOME="${HOME}/.gem"
export PATH=$GEM_HOME/bin:/Users/alfred/bin:/Users/alfred/Library/Python/2.7/bin:/usr/local/bin:/opt/local/bin:$PATH


autoload -z edit-command-line
zle -N edit-command-line
bindkey "^[edit" edit-command-line

alias gt='git log --oneline --graph --decorate --all'
alias dc='docker-compose'
