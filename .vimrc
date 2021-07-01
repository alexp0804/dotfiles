
"   .oo.  .oo      88                  o8o
" P'  `YP'       .8'                  `"'
"               .8'      oooo    ooo oooo  ooo. .oo.  .oo.   oooo d8b  .ooooo.
"              .8'        `88.  .8'  `888  `888P"Y88bP"Y88b  `888""8P d88' `"Y8
"             .8'          `88..8'    888   888   888   888   888     888
"            .8'     .o.    `888'     888   888   888   888   888     888   .o8
"            88      Y8P     `8'     o888o o888o o888o o888o d888b    `Y8bod8P

" ~~~~~~~~~~~~~ Indentation ~~~~~~~~~~~~~ "
set autoindent          " New lines inherit indentation of the previous line
set smartindent         " React to file type
set expandtab           " Convert tabs to spaces
set smarttab            " Insert tabstop number of spaces when tab is pressed
set tabstop=4           " Tab = 4 spaces
set softtabstop=4       " Delete 4 spaces in one backspace as if it was a tab
set shiftwidth=4        " Auto indent 4 spaces for new lines in nested code

" ~~~~~~~~~~~ Search Options ~~~~~~~~~~~~ "
set hlsearch            " Highlighting
set ignorecase          " Ignore case
set incsearch           " Show matches as you type
set smartcase           " Switch to case-sensitive when search contains uppercase

" ~~~~~~ Text and Number Rendering ~~~~~~ "
syntax on               " Syntax highligthing
set number              " Line numbers on
set relativenumber      " Relative line numbers on

" ~~~~~~~~~~~~~~~ Remaps ~~~~~~~~~~~~~~~~ "
" Unbind arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Nerd Tree remaps
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-t> :NerdTreeToggle<CR>

" Navigate split windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" For line jumps over 5 lines (like '5j' or '8k'), ignore wrapped lines. Otherwise, map j and k to
" gj and gk to navigate wrapped lines as expected.
" This is important for relative line use, as the mapping of j to gj and the
" same for k, will cause relative line jumps to work incorrectly
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

" Double escape clears highlighting from search
nnoremap <silent> <Esc><Esc> <Esc>:nohlsearch<CR><Esc> 

" ~~~~~~~~~~~~~ Status Line ~~~~~~~~~~~~~ "
set laststatus=2

" ~~~~~~~~~~~~~~~~~ Misc ~~~~~~~~~~~~~~~~ "
set autowrite           " Save file after switching to another file
set noerrorbells

" Set cursor to block when entering vim
" autocmd VimEnter * silent !echo -ne '\e[0 q'

set nospell             " Default off, 'set spell' to turn on
set spelllang=en_us

" ~~~~~~~~~~~~~~~ Plugins ~~~~~~~~~~~~~~~ "
call plug#begin('~/.vim/plugged')

    Plug 'junegunn/vim-plug'                                " Vim Plug
    Plug 'preservim/nerdtree'                               " Nerd Tree
    Plug 'flazz/vim-colorschemes'                           " Color-schemes
    Plug 'vim-airline/vim-airline'                          " Status bar
    Plug 'vim-airline/vim-airline-themes'                   " Status bar themes
    Plug 'lervag/vimtex'                                    " LaTeX
    Plug 'tpope/vim-surround'                               " Surrounding characters
    Plug 'scrooloose/syntastic'                             " Syntax checking
    Plug 'valloric/youcompleteme'                           " Auto completion

call plug#end()

" ~~~~~~~~~~~~~ Status Line ~~~~~~~~~~~~~ "
set laststatus=2
let g:airline_theme='minimalist'
let g:airline_detect_spell=1
let g:airline_section_z=''
let g:airline_sections_errors=''

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" ~~~~~~~~~~~~~~~ Colors ~~~~~~~~~~~~~~~~ "
" Syntax coloring
colorscheme spacegray
"colorscheme nord
" colorscheme gruvbox

" Use terminal colors for fg, bg, etc
" It's important that you place these lines after colorscheme assignment to
" overwrite it's bg and fg.
highlight LineNr ctermfg=NONE ctermbg=NONE
highlight Normal ctermbg=NONE

set t_Co=256

