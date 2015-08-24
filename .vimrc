"---------------------------
" NeoBundle Settings.
"---------------------------
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'rking/ag.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc.vim', {
  \ 'build' : {
  \     'mac'     : 'make -f make_mac.mak',
  \     'linux'   : 'make',
  \     'unix'    : 'gmake',
  \    },
  \ }
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tomtom/tcomment_vim'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
"-------------------------
" End: NeoBundle Settings.
"-------------------------

"NERDTree" {{{
  let NERDTreeShowHidden = 1
  let file_name = expand("%:p")
  if has('vim_starting') &&  file_name == ""
	  autocmd VimEnter * execute 'NERDTree ./'
	endif

  map <C-t> :NERDTreeToggle<CR>
"}}}

"Unite" {{{
  let g:unite_source_history_yank_enable = 1
  try
    let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
    call unite#filters#sorter_default#use(['sorter_rank'])
  catch
  endtry

  map <C-n> :UniteWithBufferDir -buffer-name=dotfiles file<CR>

  " Search a file in the filetree
  nnoremap <space><space> :<C-u>Unite -start-insert file_rec/async<CR>
  " Reset not it is <C-l> normally
  :nnoremap <space>r <Plug>(unite_restart)
"}}}

"EasyMotion" {{{
  " General Configuration
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

" Global Keymap
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

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

