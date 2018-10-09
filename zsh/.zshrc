# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=10000
setopt appendhistory nomatch
unsetopt autocd beep extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/erik/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /usr/local/opt/zplug/init.zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"

zplug "plugins/git", from:oh-my-zsh

zplug "dracula/zsh", as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

alias l='exa -alh'

# Shims and other crap

eval "$(rbenv init -)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "/Users/erik/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/erik/.sdkman/bin/sdkman-init.sh"