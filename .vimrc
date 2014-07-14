""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Status
Bundle 'Tagbar'
Bundle 'The-NERD-tree'

" Functions
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'SingleCompile'
Bundle 'tpope/vim-fugitive'

" Jump & Search
Bundle 'a.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'matchit.zip'
Bundle 'vim-multiple-cursors'

" Input
Bundle 'UltiSnips'
Bundle 'The-NERD-Commenter'
Bundle 'DoxygenToolkit.vim'
Bundle 'DrawIt'

" Outlook
Bundle 'molokai'
Bundle 'vim-signature'
Bundle 'Lokaltog/vim-powerline'

" Syntax

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable filetype plugins
filetype plugin indent on
filetype plugin on
filetype indent on

" With a map leader it's possible to do extra key combiniations
" like <leader>oper
let mapleader = ","
let g:mapleader = ","

" Set to auto read when a file is changed from the outside
set autoread

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color Scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
syntax enable
set background=dark
colorscheme molokai
"let g:solarized_termcolors=256
"colorscheme solarized

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Line number
set nu

" Cursor line
set cursorline
set cursorcolumn

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs :)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Indent
set cindent

" Wrap lines
set wrap

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Bugfix windows
map <leader>n :cn<cr>
map <leader>p :cp<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn on the wild menu (auto-completion when using set)
set wildmenu

" Ignore compiled files
set wildignore=*/tmp/*,*.o,*.so,*.zip,*.swp,*~,*.pyc,.git\*,.hg\*,.svn\*

" Always show current position
set ruler

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Make search act like search in modern browsers
set incsearch

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Don't redraw while executing macros (good performance config)
set lazyredraw

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files and backups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in svn/git etc
set nobackup
set nowb
set noswapfile

" File encodings
let &termencoding=&encoding
set fileencodings=utf-8,gbk

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline
set laststatus=2
set t_Co=256
let g:Powerline_symbols='unicode'

" TagBar
"let g:tagbar_left=1       " Display at left side
let g:tagbar_compact=1    " Dismiss help hint
let g:tagbar_width=30
let g:tagbar_updateonsave_maxlines=1  " Update TagBar when saving
nmap <silent> <leader>ta :TagbarToggle<cr>

" NERDTree
nmap <silent> <leader>nt :NERDTreeToggle<cr>

" Ctags
set tags+=./tags
set autochdir

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_c_check_header = 0
let g:syntastic_cpp_check_header = 0
let g:syntastic_c_remove_include_errors = 1
let g:syntastic_warning_symbol = '!>'

" Ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_height = 15
let g:ctrlp_custom_ignore = {
            \ 'dir': '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(log|jpg|png|jpeg|o|so|swp)$',
            \ }

" DoxygenToolkit
let g:DoxygenToolkit_authorName="Joe Shang <shangchuanren@gmail.com>"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:DoxygenToolkit_enhanced_color=1
"map <leader>dd :Dox<cr>
"map <leader>da :DoxAuthor<cr>
"map <leader>dl :DoxLic<cr>

" NesC Syntax Highlighting
augroup filetypedetect
    au! BufNewFile,BufRead *.nc setfiletype nc
augroup END
