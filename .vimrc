set nocompatible              " be iMproved, required
filetype off                  " required

" ==============================================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" ==============================================================================

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'flazz/vim-colorschemes' 

Plugin 'Lokaltog/vim-powerline'

Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'Shougo/neocomplcache.vim'

call vundle#end()            " required

" ==============================================================================
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" ==============================================================================
" vundle命令
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" ==============================================================================

colorscheme  codeschool


map <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden = 1 
" ==============================================================================
set rnu 
" set nu
syntax on 

set tabstop=4
set sw=4
set ts=4

"set list 
"set listchars=trail:+

set foldmethod=syntax 
set foldlevelstart=99 

" set cursorline  
set noswapfile 
set nobackup
set bufhidden=hide 
" set guicursor=n-v-c:hor10 
" set expandtab                 "Use space instead of tabs

let mapleader = ","  
let g:mapleader = ","
map Y "+y
map P "+p

"noremap ok o<esc> 

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm.app"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

"neocomplcache.vim
let g:neocomplcache_enable_at_startup = 1 
let g:neocomplcache_force_overwrite_completefunc = 1
