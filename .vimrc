" Use Vim settings, rather than Vi settings.
" This must be first, because it changes other options.
set nocompatible
execute pathogen#infect()

" ============================== "
" <====  General Settings  ====> "
" ============================== "

set number                       " show line numbers
set backspace=indent,eol,start   " allow backspace in insert mode
set history=1000                 " store :cmdline history
set showcmd                      " show incomplete commands
set showmode                     " show current mode
set autoread                     " reload files changed outside of vim
set cursorline                   " highlight current line
set showmatch                    " highlight matching [{()}]

syntax on                        " syntax highlighting
filetype plugin on               " load plugins for filetype on load
filetype indent on               " indent based on filetype 

"
set autoindent                   " indentation control
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set incsearch                    " search as characters are entered
set hlsearch                     " highlight matches
set ignorecase                   " don't care about case
set smartcase                    " unless we do

set nowrap                       " don't wrap lines
set linebreak                    " wrap lines at convenient points

set foldmethod=indent            "fold based on indent
set foldnestmax=3                " deepest fold is 3 levels
set nofoldenable                 " don't fold by default

set scrolloff=8                  " start scrolling 8 lines away from margins

" display tabs and trailing spaces
set list listchars=tab:\ \ ,trail:·

set noswapfile                   " turn off swap files
set nobackup
set nowb

" ================================= "
" <=====   Persistent Undo   =====> "      
" ================================= "

" Keep undo history across sessions by storing in file.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
end

" ================================ "
" <=== Keys, Maps, & Bindings ===> "
" ================================ "

nnoremap <Left> :echo "Use h"<CR>  " get off my lawn
nnoremap <Right> :echo "Use l"<CR>
nnoremap <Up> :echo "Use k"<CR>
nnoremap <Down> :echo "Use j"<CR>

let mapleader=","

nmap ` :vsplit $MYVIMRC<enter>     " open .vimrc in vertical split
nmap ! :source $MYVIMRC<enter>     " set .vimrc changes in current session

inoremap jk <esc>                  " who wants to reach that far for normal mode?
vnoremap jk <esc>                  " not me...

" turn off search highlight when done
nnoremap <leader><space> :nohlsearch<enter>
