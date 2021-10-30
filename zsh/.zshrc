# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Path
export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"

# Plugins
source <(sheldon source)

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
alias gst='git status'

# Set title to current folder
precmd () { print -Pn "\e]2;%n@%M | %~\a" }
