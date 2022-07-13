" Global Vim Setting

syntax on             " Enable syntax highlighting
set number            " Enable line numbers

set hlsearch          " highlight all result
set ignorecase        " ignore case in search
set incsearch         " show search results

set expandtab         " On pressing tab, insert 4 spaces
set autoindent        " Enable auto indenting
set shiftwidth=4      " Indent by 4 spaces when auto-indenting
set softtabstop=4     " Indent by 4 spaces when hitting tab
set textwidth=80      " text Width 80

set nobackup          " Disable backup files
set wildmenu          " Display command line's tab complete options as a menu.
set noswapfile        " Disable swap file
set noundofile        " Disable undofile


colorscheme default 

filetype indent on    " Enable indenting for files

" PYTHON SETTING 
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab autoindent

"YAML SETTING
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab autoindent
