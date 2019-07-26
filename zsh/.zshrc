# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Completion
autoload -Uz compinit
compinit
setopt COMPLETE_ALIASES

# Prompt
autoload -Uz promptinit
promptinit

# Variables
export EDITOR="micro"

# Aliases
alias l='exa -alh'

# Plugins
source <(sheldon source)
