set nocompatible              " be iMproved, required
filetype off                  " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" mapping the jj to escape, and all of the possible mistakes that happen
imap jk <Esc>
imap jj <Esc>
imap Jj <Esc>
imap jJ <Esc>

" use ctrl+hjkl for movement between vsplit windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" use CMD+hjkl for movement between vsplit windows as well
"nnoremap <D-J> <C-W><C-J>
"nnoremap <D-K> <C-W><C-K>
"nnoremap <D-L> <C-W><C-L>
"nnoremap <D-H> <C-W><C-H>

" auto startup NERDTree
"autocmd vimenter * NERDTree

" use CMD + m to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" auto close vim if only window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Helpful information: cursor position in bottom right, line numbers on left
set number
set cc=80 "80 char limit line

" Indent as intelligently as vim knows how
set smartindent

" Add your own changes below...
set t_Co=256 "256 color
set encoding=utf-8 "UTF-8 character encoding

" tab stuff
set tabstop=4  "4 space tabs
set shiftwidth=4 "shifting with > and < is 4 spaces
set softtabstop=4  "Tab spaces in no hard tab mode

"set tabstop=2  "2 space tabs
"set shiftwidth=2 "shifting with > and < is 2 spaces
"set softtabstop=2  "Tab spaces in no hard tab mode

set expandtab  " Expand tabs into spaces
set smarttab   "insert blanks on tab
set autoindent  "autoindent on new lines

set showmatch  "Highlight matching braces
"set ruler  "Show bottom ruler
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
set cursorline  "Highlight current line
set clipboard=unnamed  "Copy and paste from system clipboard

" speed stuff for optimization
set lazyredraw  "Don't redraw while running macros (faster)
set ttyfast  "Speed up vim
set regexpengine=1
set noshowcmd
set synmaxcol=200

set autochdir  "Change directory to currently open file
set nocompatible  "Kill vi-compatibility
set wrap  "Visually wrap lines
set linebreak  "Only wrap on 'good' characters for wrapping
set backspace=indent,eol,start  "Better backspacing
set linebreak  "Intelligently wrap long files
set nostartofline "Vertical movement preserves horizontal position
set pastetoggle=<F2> "toggles in and out of smart indenting

" Strip whitespace from end of lines when writing file
autocmd BufWritePre * :%s/\s\+$//e

highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc

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
