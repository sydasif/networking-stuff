syntax on             " Enable syntax highlighting
set spell             " Spell checking
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
set laststatus=2      " Show status line
set shell=powershell  " Use powershell (windows)


colorscheme zellner   " Set nice looking colorscheme
set statusline=%F%m%r%h%w%=(%Y)\ (line\ %l\/%L)