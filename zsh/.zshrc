# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bureau"

bindkey -v

plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting colored-man-pages vi-mode)

source $ZSH/oh-my-zsh.sh

source ~/.aliases
