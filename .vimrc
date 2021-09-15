set number            " Enable line numbers
syntax on             " Enable syntax highlighting
set softtabstop=2     " Indent by 2 spaces when hitting tab
set shiftwidth=4      " Indent by 4 spaces when auto-indenting
set tabstop=4         " Show existing tab with 4 spaces width
set autoindent        " Enable auto indenting
filetype indent on    " Enable indenting for files
set nobackup          " Disable backup files
set laststatus=2      " Show status line
set wildmenu          " Display command line's tab complete options as a menu.
set noswapfile        " Disable swap file
set shell=powershell  " Use powershell (windows)
set noundofile        " Disable undofile

colorscheme zellner   " Set nice looking colorscheme
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
