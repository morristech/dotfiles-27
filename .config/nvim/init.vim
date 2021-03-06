"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/a12622/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/a12622/.cache/dein')
  call dein#begin('/Users/a12622/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/a12622/.cache/dein/repos/github.com/Shougo/dein.vim')

	call dein#load_toml("/Users/a12622/.config/nvim/dein.toml", {'lazy': 0})
	call dein#load_toml("/Users/a12622/.config/nvim/dein_lazy.toml", {'lazy': 1})

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------

"Plugin Settings -------------------------
"NERDTree" {{{
  let NERDTreeShowHidden = 1
  let file_name = expand("%:p")
  if has('vim_starting') &&  file_name == ""
	  autocmd VimEnter * execute 'NERDTree ./'
	endif

  map <C-t> :NERDTreeToggle<CR>
"}}}
"End Plugin Settings----------------------

"Global Keymap----------------------------
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
"End Global Keymap------------------------

"Options----------------------------------
syntax on
colorscheme gotham 
set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
set number
set autoread
set autoindent
set ruler
set noswapfile
set title
set tabstop=2
set shiftwidth=2
set whichwrap=b,s,h,l,<,>,[,]
set hlsearch
set ignorecase
set smartcase
set showcmd
set backspace=indent,eol,start
set number
"End Options------------------------------

