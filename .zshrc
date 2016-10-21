# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="pygmalion"

# history format
HIST_STAMPS="mm/dd/yyyy"

# oh-my-zsh plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.yarn/bin:$PATH"

for file in ~/.{extra}; do
    [ -r "$file" ] && source "$file"
done
unset file
