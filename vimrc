"  ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄
" ███    ███ ███  ▄██▀▀▀███▀▀▀██▄
" ███    ███ ███▌ ███   ███   ███
" ███    ███ ███▌ ███   ███   ███
" ███    ███ ███▌ ███   ███   ███
" ███    ███ ███  ███   ███   ███
" ███    ███ ███  ███   ███   ███
"  ▀██████▀  █▀    ▀█   ███   █▀

" ==================================================================================================
" General settings
" ==================================================================================================

" base
set nocompatible                      " vim, not vi
syntax on                             " syntax highlighting
filetype plugin indent on             " try to recognise filetype and load plugins and indent files

" interface
set background=light                   " tell vim what the background color looks like
set colorcolumn=100                   " show a column at 100 chars
set cursorline                        " highlight current line
set laststatus=2                      " enable airline on open
set noshowmode                        " don't show mode as airline already does
set number                            " show line numbers
set relativenumber                    " show relative line numbers
set ruler                             " show current position at bottom
set scrolloff=5                       " keep at least 5 lines above/below
set shortmess+=aAIsT                  " disable welcome screen and other messages
set showcmd                           " show any commands
set sidescroll=1                      " smoother horizontal scrolling
set sidescrolloff=5                   " keep at least 5 lines left/right
set splitbelow                        " create new splits below
set splitright                        " create new splits to the right
" set termguicolors                     " enable true colors
set wildmenu                          " enable wildmenu
set wildmode=longest:full,full        " configure wildmenu
set nohidden                          " close buffers instead of hiding them

" whitespace
set expandtab                         " use tabs instead of spaces
set nojoinspaces                      " use one space, not two, after punctuation
set shiftround                        " shift to next tabstop
set shiftwidth=4                      " amount of space used for indentation
set softtabstop=4                     " appearance of tabs
set tabstop=4                         " use two spaces for tabs

" folding
set nofoldenable                      " disable folds

" text appearance
set list                              " show invisible characters
set listchars=tab:>·,trail:·,nbsp:¬   " but only show useful chaaracters
set nowrap                            " disable line wrapping

" interaction
set backspace=2                       " make backspace work like most other apps
set mouse=a                           " enable mouse support
set mousehide                         " hide the mouse cursor while typing
set whichwrap=b,s,h,l,<,>,[,]         " backspace and cursor keys wrap too

" searching
set hlsearch                          " highlight search matches
set ignorecase                        " set case insensitive searching
set incsearch                         " find as you type search
set smartcase                         " case sensitive searching when not all lowercase

" background processes
set autoread                          " update file when changed outside of vim
set autoindent                        " copy indentation from the previous line for new line
set clipboard=unnamed                 " use native clipboard
set history=200                       " store last 200 commands as history
set nobackup                          " don't save backups
set noerrorbells                      " no error bells please
set noswapfile                        " no swapfiles
set nowritebackup                     " don't save a backup while editing
set ttyfast                           " indicates a fast terminal connection
set undodir=~/.config/nvim/undodir    " set undofile location
set undofile                          " maintain undo history between sessions
set undolevels=1000                   " store 1000 undos

" character encoding
if !&readonly && &modifiable
  set fileencoding=utf-8              " the encoding written to file
endif
set encoding=utf-8                    " the encoding displayed

" let g:python3_host_prog = '/Users/Me/.virtualenvs/nvim/bin/python'
" ==================================================================================================
" Keys
" ==================================================================================================

" set leader to space
let mapleader = " "

" map semicolon to colon and vice versa
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" adjust window size with arrow keys
noremap <right> <C-w>5>
noremap <left> <C-w>5<
noremap <up> <C-w>5+
noremap <down> <C-w>5-

" keep selection after indent
vnoremap < <gv
vnoremap > >gv

" press enter for newline without insert
nnoremap <cr> o<esc>

" make moving to beginning and end of lines easier
noremap H ^
noremap L $

" sort
vnoremap <leader>s :sort<CR>

" reload vim config
nnoremap <leader>r :source $MYVIMRC<CR>

" clear search
nnoremap <leader>c :let @/ = ""<CR>

" select all
nnoremap <leader>a ggVG<CR>

" copy all
nnoremap <leader>y ggVGy<CR>

" upper or lowercase the current word
nnoremap <leader>^ gUiW
nnoremap <leader>v guiW

" ==================================================================================================
" Autocommands
" ==================================================================================================

augroup vimrcEx
  autocmd!

  " disable comment continuation
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

  " only show a cursorline in the active window
  autocmd WinLeave * set nocursorline
  autocmd WinEnter * set cursorline
  autocmd InsertEnter * set nocursorline
  autocmd InsertLeave * set cursorline
augroup END

" ==================================================================================================
" Searching
" ==================================================================================================

if executable('ag')
  " use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " define Ag command
  command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

  " bind \ to grep shortcut
  nnoremap \ :Ag<SPACE>
endif

" ==================================================================================================
" Load plugins
" ==================================================================================================

source $HOME/.vim/plugins.vim

" ==================================================================================================
" Load configs
" ==================================================================================================

source $HOME/.vim/config-theme.vim
source $HOME/.vim/config-plugins.vim

let g:Powerline_symbols = 'fancy'
