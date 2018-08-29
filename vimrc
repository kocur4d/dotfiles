set nocompatible " no standard vi - Improved!
filetype off
let mapleader = "\<space>"
set tabstop=2 shiftwidth=2 expandtab " setting up tab behaviour
set number " show line numbers
set relativenumber " make the line numbers relative

call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'mattn/emmet-vim'
Plug 'isRuslan/vim-es6'
Plug 'christoomey/vim-sort-motion'
Plug 'haishanh/night-owl.vim'
" END PLUGINS

call plug#end()            " required
" filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just
" :PlugUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" Put your non-Plugin stuff after this line

" rspec stuff
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" normal mode mappings
nmap 0 ^
nmap <leader>vr :tabe $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>
nmap <leader>cs :tabe db/schema.rb<cr>   
nmap <leader>i i  <esc>i

" insert mode mappings
imap jk <esc>
imap kj <esc>

set lcs=tab:>-,trail:.

noremap <TAB> <C-W>w

" night-owl
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme night-owl
