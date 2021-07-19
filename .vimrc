" Configuration file for vim
"set modelines=1		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" 设置空格和字符可见
:setlocal list
:set listchars=tab:>~,trail:.

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

"--------- add for Vundle.vim -----------
set nocompatible              " be iMproved, required
filetype off                  " required
 
filetype plugin indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"Plugin 'VundleVim/Vundle.vim'

" tools
Plugin 'L9'

" browser enhencement
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/vimproc.vim'

" UI enhencement
Plugin 'bling/vim-airline'
Plugin 'drmikehenry/vim-fontsize'

" language support
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'

"+coding enhencement
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'Shougo/neocomplete.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Shougo/unite.vim'
"|--git
Plugin 'tpope/vim-fugitive'
" colorscheme
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'

Plugin 'luochen1990/rainbow'
"Plugin 'Valloric/YouCompleteMe'

" For rust
Plugin 'rust-lang/rust.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

" format
set nu
set ts=4
set sw=4
set sts=4
set noexpandtab
set display=lastline
set laststatus=2

" encoding
set encoding=utf-8
setglobal fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,latin1,gb18030,gbk,gb2312,cp936,iso8859
set termencoding=utf-8
" indent
set wrap
set autoindent
set smartindent
set smarttab
set cindent
set linebreak
set shiftround
"set expandtab
"set showbreak=>\ \ \

" search
set hlsearch
set incsearch
set ignorecase
set showcmd

" backups
set nobackup
set nowritebackup

set ruler
set cursorline

set fileformat=unix
set fileformats=unix,dos,mac

set mouse=a

syntax enable
set foldmethod=syntax
set nofoldenable
set foldlevel=20

" colorscheme molokai
set bg=light

set cc=80

"set list
"set listchars=tab:▸\ ,eol:¬

set modeline

" #"call pathogen#infect()
" syntax on               "语法高亮
" set nocompatible        "使用vim的键盘模式
" set nu                  "设置行号
" set cursorline
" set nobackup            "不需要备份
" set confirm             "未保存或者只读时，弹出确认
" set showcmd             "显示未完成命令
" set tabstop=4           "tab为4个空格
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
" set softtabstop=4		"统一
" set shiftwidth=4        "行交错
" 
" set formatoptions=tcrqn "自动格式化
" set cindent             "c文件类型自动缩进
" set autoindent          "自动对齐
" set smartindent         "智能缩进
" set hlsearch            "高亮查找匹配
" set incsearch			"显示匹配过程
" 
set t_Co=256
" let g:solarized_termcolors=256
set background=dark     
" colorscheme solarized
let g:molokai_original=1
let g:rehash256=1

let g:rainbow_active=1
let g:rainbow_conf={
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}

" for youcompleteme
"let g:ycm_log_level = 'debug'
"let g:ycm_server_python_interpreter='/usr/bin/python'

colorscheme molokai 
" 
" set showmatch           "显示匹配"
" set ruler               "右下角显示光标位置"
set noerrorbells        "不发出警告声"
" 
" filetype plugin on
" filetype indent on
" let g:neocomplete#enable_at_startup = 1
" 
" "cscope
" set cscopequickfix=s-,c-,d-,i-,t-,e-
" nmap c :cs find c <C-R>=expand("<cword>")<CR><CR>
" 
set bg=light

if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif
hi comment ctermfg=6
