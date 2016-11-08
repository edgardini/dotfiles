" # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
" Vundle config (vim's bundle manager)
" # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'ctrlp.vim'
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-tree'
Plugin 'rainbow_parentheses.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
" Preferred vim features + custom key bindings
" # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

syntax on

let mapleader = ","

set number
set relativenumber
set clipboard=unnamed

" Searching
set ignorecase smartcase incsearch hlsearch

" Indenting
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent   "Retain indentation on next line
set smartindent  "Turn on autoindenting of blocks

" Press i to enter insert mode, and ii to exit.
imap ii <Esc>

" Opening and closing braces
imap <C-f> {<CR>}<C-O>O

" Tab navigation
" nnoremap H gT
" nnoremap L gt
nnoremap <C-w> :q<CR>
nnoremap <C-t> :tabe<CR>

" File/buffer navigation
set hidden
noremap <Leader>w :update<CR>
nnoremap <Leader>f :CtrlP .<CR>
nnoremap <Leader>b :CtrlPBuffer<CR>
nnoremap <Leader><Leader> :NERDTreeToggle<CR>

" Toggle line numbers
map <Leader>n :set invnumber<CR>

" Toggle relative numbers
map <Leader>r :set invrelativenumber<CR>

" Toggle whitespace visibility with ,s
nmap <Leader>s :set list!<CR>
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×
:set list " Enable by default

" Accidentally pressing Shift K will no longer open stupid man entry
noremap K <nop>

" Prettify JSON with =j
nmap =j :%!python -m json.tool


" # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
" Plugin configurations
" # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

" Rainbow parantheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" CtrlP Multiple files: Create one window for the first file, open the rest hidden
let g:ctrlp_open_multiple_files = '1jr'


" # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
" Notes
" # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
"
" Ctrl + n: Autocomplete feature.
" Prefer buffers + CtrlP over tabs navigation.
"
" Interesting configurations:
" https://github.com/tlhunter/vimrc/blob/master/vimrc
" https://github.com/sheerun/vimrc
" https://github.com/thoughtstream/Damian-Conway-s-Vim-Setup/blob/master/.vimrc
