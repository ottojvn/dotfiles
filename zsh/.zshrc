# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ottojvn/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Color
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# PATH
## Add .local/bin to path
export PATH="$HOME/.local/bin:$PATH"

## Add doom emacs to path
export PATH="$HOME/.config/emacs/bin:$PATH"

## Add go installed binaries to path
export PATH="$HOME/go/bin:$PATH"

## Add cargo installed binaries to path
export PATH="$HOME/.cargo/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

eval "$(starship init zsh)"

alias emacs="emacsclient -c -a ''"
alias emacst="emacsclient -t -a ''"

source /usr/share/nvm/init-nvm.sh
