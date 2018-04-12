"""""""""""""""""""""""""""""
"         Powerline         "
"""""""""""""""""""""""""""""
set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

"""""""""""""""""""""""""""""
"        Behaviour          "
"""""""""""""""""""""""""""""
set nocompatible    " Don't behave like Vi

set wildmenu        " Enhanced command line completion
set wildmode=longest,list   " Complete the longest match, then list others
set backspace=indent,eol,start  " Allow backspacing over more stuff
set confirm         " Ask to confirm instead of failing
set ignorecase      " Case insensitive search
set smartcase       " Case sensitive if search term contains capitals
set linebreak       " Allow linebreaks between words
set scrolloff=2     " Start scrolling a few lines from the border
set visualbell      " Use colour blink instead of sound
set display+=lastline   " Always display the last line of the screen
set encoding=utf8   " Use utf8 as internal encoding
set whichwrap+=<,>,h,l  " Allow cursor to wrap lines
set hidden          " Allow opening new buffers without saving changes
set mouse=a         " Allow mouse control in all modes
set undofile        " Persistent undo history
"set undodir=~/.vim/undo " Undo data location
"set directory=~/.vim/swap " Swap file location
"set backupdir=~/.vim/backup " Backup file location

"autocmd CompleteDone * pclose " Automatically close preview after completion

"""""""""""""""""""""""""""""
"        Formatting         "
"""""""""""""""""""""""""""""
set tabstop=4       " Width of the tab character
set softtabstop=4   " How many columns the tab key inserts
set shiftwidth=4    " Width of 1 indentation level
set expandtab       " Expand tabs into spaces
set smartindent     " Smart C-like autoindenting

" Determine indentation rules by filetype
filetype plugin indent on

"""""""""""""""""""""""""""""
"        Interface          "
"""""""""""""""""""""""""""""
set number          " Show line numbers
set showmatch       " When inserting brackets, highlight the matching one
set hlsearch        " Highlight search results
set incsearch       " Highlight search results as the search is typed
set showcmd         " Show command on the bottom
set ruler           " Show line and cursor position
set colorcolumn=80,120  " Highlight the 80th column
"set listchars=tab:>-,trail:· " Show tabs and trailing space
set list            " Enable the above settings
set laststatus=2    " Wider status line, needed for powerline

syntax on           " Enable syntax highlighting

"""""""""""""""""""""""""""""
"           Plugins         "
"""""""""""""""""""""""""""""
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" Disable fancy arrows in NERDTree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible ='-'

" Show hidden files
let g:NERDTreeShowHidden = 1

" Open file to another tab
let NERDTreeMapOpenInTab='<ENTER>'
"""""""""""""""""""""""""""""
"   Colors and GUI          "
"""""""""""""""""""""""""""""
set background=dark
colorscheme gruvbox
