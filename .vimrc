syntax on             " Enable syntax highlighting
set number            " Enable line numbers

set expandtab         " On pressing tab, insert 4 spaces
set autoindent        " Enable auto indenting
set shiftwidth=4      " Indent by 4 spaces when auto-indenting
set softtabstop=4     " Indent by 4 spaces when hitting tab
filetype indent on    " Enable indenting for files

set nobackup          " Disable backup files
set wildmenu          " Display command line's tab complete options as a menu.
set noswapfile        " Disable swap file
set noundofile        " Disable undofile
colorscheme torte

" PYTHON SETTING 
autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab number autoindent

"YAML SETTING
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab autoindent
