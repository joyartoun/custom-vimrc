"pathogen
"syntastic
"molokai och hybrid colorschemes                                                                                                     
"pretty-vim-python
"Flake8 python linter, install with python<version> -m pip install flake8
"To install pip on a new machine, you need epel repo. See guides online.
"For color, download guicolorscheme.vim and put it in .vim/colors and add set \
"t_Co=256 in this file

"Enable indenting for filetypes
filetype indent on

set t_Co=256
"execute pathogen#infect()

set number
set cursorline

"Lowercase searches is non-case senistive, upper case is case sensitive
set smartcase
set incsearch
"regex characters have the same meaning as in GNU grep
set magic
set history=700

let g:hybrid_custom_term_colors = 1 

set background=dark
colorscheme hybrid

"disable syntastic on the statusline
let g:statline_syntastic = 1
let g:syntastic_always_populate_loc_list = 1 
let g:syntastic_auto_loc_list = 1 
let g:syntastic_check_on_open = 1 
let g:syntastic_check_on_wq = 0 

highlight Comment cterm=bold

autocmd BufEnter *.py colorscheme molokai

".py
let g:syntastic_python_checkers = ['flake8']
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set smarttab |
    \ set textwidth=80 |

".js
let g:javascript_plugin_flow = 1 
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |
".sh
au BufNewFile,BufRead *.sh
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set expandtab |
    \ set autoindent |

"Statusline
set laststatus=2

set statusline =
set statusline +=col:\ %c		"column
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%0*\ \ %m%r%w\ %P\ \   "Modified? Readonly? Top/bot.

set statusline +=%#warningmsg#
"set statusline +=%{SyntasticStatuslineFlag()}
set statusline +=%*
