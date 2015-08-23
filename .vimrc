"---------------------------
" Neobundle Settings
"---------------------------
" set directory path to manage bundle
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" manage neobundle by neobundle
NeoBundleFetch 'Shougo/neobundle.vim'

" HERE!! WRITE PLUGINGS!!
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'rking/ag.vim'
NeoBundle 'easymotion/vim-easymotion'

call neobundle#end()

" Required:
filetype plugin indent on

" uninstallede plungins checker
NeoBundleCheck

"-------------------------
" End: Neobundle Settings.
"-------------------------

"NERDTree" {{{
   map <C-n> :NERDTreeToggle<CR>
"}}}

"EasyMotion" {{{
  "General Configuration
  let g:EasyMotion_do_mapping = 0
  let g:EasyMotion_enter_jump_first = 1
  let g:EasyMotion_space_jump_first = 1

  " Find Motions
  nmap s <Plug>(easymotion-s2)
  xmap s <Plug>(easymotion-s2)
  omap x <Plug>(easymotion-s2)
  let g:EasyMotion_smartcase = 1

  " Line Motions
  map <Space>j <Plug>(easymotion-j)
  map <Space>k <Plug>(easymotion-k)
  let g:EasyMotion_startofline = 0

  " Search Motions
  " `<Tab>` & `<S-Tab>` to scroll up/down a page with next match
  nmap g/ <Plug>(easymotion-sn)
  xmap g/ <Plug>(easymotion-sn)
  omap g/ <Plug>(easymotion-tn)
"}}}

" Option
syntax on
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
