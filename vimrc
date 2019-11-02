" Keep 1000 items in the history.
set history=1000

" show cursor position
set ruler

" enables syntax
syntax enable
set encoding=UTF-8

" load filetype-specific indent files
filetype indent on

" Show incomplete commands
set showcmd

" shows a menu when using tab completion
set wildmenu

"tabs
set tabstop=2
set shiftwidth=0
set softtabstop=2
set expandtab

" highlight current line
set cursorline

" when you press z and enter it scrolls all the way to the top of the screen and leaves 5 rows
set scrolloff=5

set incsearch
set hlsearch
set nu
set ignorecase
set smartcase
set guifont=Fira\ Mono\ for\ Powerline

" redraw only when we need to.
set lazyredraw          

" highlight matching [{()}]
set showmatch           

" enable folding
set foldenable          

" open most folds by default
set foldlevelstart=0

" 10 nested fold max
set foldnestmax=10      

" space open/closes folds
nnoremap <space> za

" fold based on indent level
set foldmethod=indent   

" makes a backup copy of the file you're editing before saving it
set backup

" don't break words when line wrapping
set lbr

" copy into system clipboard
set clipboard=unnamedplus

" set autoindent
set ai

" smart indent
set si

set bg=dark

" map Ctrl-C to <ESC>
map <C-C> <ESC>

" Runtime path manipulation by pathogen plugin
execute pathogen#infect()

" Install vim-plug itself if not already there
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install plugins with vim-plug
call plug#begin('~/.vim/bundle')
" Declare the list of plugins.
Plug 'tomasiser/vim-code-dark'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'thaerkh/vim-indentguides'
call plug#end()

"set colorscheme :color
colorscheme codedark
