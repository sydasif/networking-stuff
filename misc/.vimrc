" Global Vim Setting
set number            " Enable line numbers
syntax  on            " Enable syntax highlighting
set expandtab         " On pressing tab, insert 4 spaces
set autoindent        " Enable auto indenting
set shiftwidth=4      " Indent by 4 spaces when auto-indenting
set softtabstop=4     " Indent by 4 spaces when hitting tab

set nobackup          " Disable backup files
set noswapfile        " Disable swap file
set noundofile        " Disable undofile
" --------------------------------------------------------------

set nocompatible              " required
filetype off                  " required
set encoding=utf-8            " UTF-8 Support

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" make code pretty
let python_highlight_all=1
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here 
Plugin 'tmhedberg/SimpylFold' " code folding
Plugin 'tpope/vim-fugitive' " git integration
Plugin 'vim-syntastic/syntastic' " syntax checking/highlihting
Plugin 'nvie/vim-flake8' " PEP 8 checking

" color schemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" define which color schemes is use
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

" toggle color schemes
call togglebg#map("<F5>")

" PYTHON SETTING 
autocmd FileType python setlocal ts=4 sts=4 sw=4 textwidth=79 expandtab number autoindent

"YAML SETTING
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab autoindent

