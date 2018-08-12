if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/Users/a12622/.config/nvim,/etc/xdg/nvim,/Users/a12622/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.3.1/share/nvim/runtime,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/a12622/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/a12622/.config/nvim/after,/Users/a12622/.cache/dein/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/a12622/git/dotfiles/.config/nvim/init.vim', '/Users/a12622/git/dotfiles/.config/nvim/dein.toml', '/Users/a12622/git/dotfiles/.config/nvim/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/a12622/.cache/dein'
let g:dein#_runtime_path = '/Users/a12622/.cache/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/a12622/.cache/dein/.cache/init.vim'
let &runtimepath = '/Users/a12622/.config/nvim,/etc/xdg/nvim,/Users/a12622/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/Users/a12622/.cache/dein/repos/github.com/Shougo/dein.vim,/Users/a12622/.cache/dein/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.3.1/share/nvim/runtime,/Users/a12622/.cache/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/a12622/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/a12622/.config/nvim/after'
filetype off
let g:deoplete#enable_at_startup = 1
