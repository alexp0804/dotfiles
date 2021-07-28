#  .oo.  .oo      88                         oooo
# P'  `YP'       .8'                         `888
#               .8'        oooooooo  .oooo.o  888 .oo.   oooo d8b  .ooooo.
#              .8'        d'""7d8P  d88(  "8  888P"Y88b  `888""8P d88' `"Y8
#             .8'           .d8P'   `"Y88b.   888   888   888     888
#            .8'     .o.  .d8P'  .P o.  )88b  888   888   888     888   .o8
#            88      Y8P d8888888P  8""888P' o888o o888o d888b    `Y8bod8P'

export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Browser is default OS browser (whatever open uses)
export BROWSER=open

# Alias file
source ~/.aliases

# Vim-style binds
bindkey -v
export KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

PROMPT="%1d $ "
# PROMPT="❴ %B%n@%m:%b %~ ❵ "$'\n'"     ⟹   "

# Fuzzy finder commands
# export FZF_DEFAULT_COMMAND="fd . $HOME"
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# export FZF_ALT_C_COMMAND="fd -t d . $HOME"

if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
