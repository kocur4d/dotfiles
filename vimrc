set nocompatible " no standard vi - Improved!
filetype off
let mapleader = "\<space>"
set tabstop=2 shiftwidth=2 expandtab " setting up tab behaviour
set number " show line numbers
set relativenumber " make the line numbers relative

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'mattn/emmet-vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'isRuslan/vim-es6'
Plugin 'christoomey/vim-sort-motion'
Plugin 'elixir-editors/vim-elixir' 
" END PLUGINS

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
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

let g:mix_format_on_save = 1

syntax enable
set background=light
let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized
