export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="clean"
plugins=(git)

source $ZSH/oh-my-zsh.sh

for file in $HOME/.extra/*; do
	[ -r "$file" ] && source "$file"
done
unset file

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
