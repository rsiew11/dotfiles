imap jj <Esc>
imap Jj <Esc>
imap jJ <Esc>

" Helpful information: cursor position in bottom right, line numbers on left
set number
set cc=80 "80 char limit line

" Indent as intelligently as vim knows how
set smartindent

" Show multicharacter commands as they are being typed
set showcmd

" Add your own changes below...
set t_Co=256 "256 color
set encoding=utf-8 "UTF-8 character encoding
"set tabstop=4  "4 space tabs
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab "make tabs = 4 spaces
set softtabstop=4  "Tab spaces in no hard tab mode
set expandtab  " Expand tabs into spaces
set autoindent  "autoindent on new lines
set showmatch  "Highlight matching braces
set ruler  "Show bottom ruler
set equalalways  "Split windows equal size
set formatoptions=croq  "Enable comment line auto formatting
set wildignore+=*.o,*.obj,*.class,*.swp,*.pyc "Ignore junk files
set title  "Set window title to file
set hlsearch  "Highlight on search
set ignorecase  "Search ignoring case
set smartcase  "Search using smartcase
set incsearch  "Start searching immediately
set scrolloff=5  "Never scroll off
set wildmode=longest,list  "Better unix-like tab completion
"set cursorline  "Highlight current line
set clipboard=unnamed  "Copy and paste from system clipboard
set lazyredraw  "Don't redraw while running macros (faster)
set autochdir  "Change directory to currently open file
set nocompatible  "Kill vi-compatibility
set wrap  "Visually wrap lines
set linebreak  "Only wrap on 'good' characters for wrapping
set backspace=indent,eol,start  "Better backspacing
set linebreak  "Intelligently wrap long files
set ttyfast  "Speed up vim
set nostartofline "Vertical movement preserves horizontal position
set pastetoggle=<F2> "toggles in and out of smart indenting

" Strip whitespace from end of lines when writing file
autocmd BufWritePre * :%s/\s\+$//e

" Syntax highlighting and stuff
filetype plugin indent on
syntax on

highlight ModeMsg ctermfg=blue
syntax enable

" Get rid of warning on save/exit typo
command WQ wq
command Wq wq
command W w
command Q q

colorscheme koehler
au BufReadPost *.srp set syntax=c "force highlighting for serpent"
