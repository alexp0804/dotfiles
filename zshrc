export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Alias file
source ~/.aliases

# Vim-style binds
bindkey -v

# Change cursor shape for different vi modes
function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] ||
       [[ $1 = 'block' ]]; then
      echo -ne '\e[1 q'
    elif [[ ${KEYMAP} == main ]] ||
         [[ ${KEYMAP} == viins ]] ||
         [[ ${KEYMAP} == '' ]] ||
         [[ $1 = 'beam' ]]; then
      echo -ne '\e[5 q'
    fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use block shape cursor on startup
preexec() { echo -ne '\e[5 q' ;} # Use block shape cursor for each new prompt


# PROMPT="%1d $ "
PROMPT="❴ %B%n@%m:%b %~ ❵ "$'\n'"     ⟹   "

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
