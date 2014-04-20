set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'kien/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'Valloric/YouCompleteMe'
Bundle 'mileszs/ack.vim'
Bundle 'https://github.com/vim-scripts/project.tar.gz.git'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'https://github.com/jaromero/vim-monokai-refined.git'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-powerline'
Bundle 'kshenoy/vim-signature'


let mapleader=","
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:NERDTreeDirArrows=0
set laststatus=2
let g:ctrlp_extensions = ['funky']
nnoremap <Leader>ff :CtrlPFunky<Cr>
nnoremap <Leader>fF :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1
noremap <C-b> :CtrlPBuffer<Cr>
noremap <C-m> :CtrlPMRU<Cr>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20'
let g:ctrlp_open_multiple_files = '3vjr'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|ppm|pgm|caf|crash)$',
  \ }
let g:ctrlp_working_path_mode = 0

filetype plugin indent on

set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set fileencodings=utf-8,ucs-bom,chinese

"语言设置
set langmenu=zh_CN.UTF-8

"设置语法高亮
syntax enable
syntax on

"设置配色方案
colorscheme Monokai-Refined

"可以在buffer的任何地方使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"高亮显示匹配的括号
set showmatch

"去掉vi一致性
set nocompatible

"设置缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent

"设置切换buffer可不保存
set hidden

if &term=="xterm"
	set t_Co=8
	set t_Sb=^[[4%dm
	set t_Sf=^[[3%dm
endif

"打开文件类型自动检测功能
filetype on

"设置taglist
let Tlist_Show_One_File=0   "显示多个文件的tags
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "在taglist是最后一个窗口时退出vim
let Tlist_Use_SingleClick=1 "单击时跳转
let Tlist_GainFocus_On_ToggleOpen=1 "打开taglist时获得输入焦点
let Tlist_Process_File_Always=1 "不管taglist窗口是否打开，始终解析文件中的tag



nmap <C-l> <C-W>l 
nmap <C-h> <C-W>h
nmap <C-j> <C-W>j 
nmap <C-k> <C-W>k 

nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>
map <C-n> :NERDTreeTabsToggle<CR>

"设置默认shell
set shell=bash

"设置VIM记录的历史数
set history=400

"设置当文件被外部改变的时侯自动读入文件
if exists("&autoread")
	set autoread
endif

"设置ambiwidth
set ambiwidth=double

"设置文件类型
set ffs=unix,dos,mac

"设置增量搜索模式
set incsearch
set ignorecase
set smartcase
set hlsearch

"设置静音模式
set noerrorbells
set novisualbell
set t_vb=

"不要备份文件
set nobackup
set nowb

"开启行号
set number

set smarttab
"set guifont=Inconsolata:h13
let g:Powerline_symbols = 'fancy'
set guifont=Inconsolata\ for\ Powerline:h13
