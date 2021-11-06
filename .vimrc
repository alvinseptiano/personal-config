"let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'

"if empty(glob(data_dir . '/autoload/plug.vim'))
"  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

" Install vim-plug if not found
"if empty(glob('~/.vim/autoload/plug.vim'))
"  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"endif

" Run PlugInstall if there are missing plugins
"autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
"  \| PlugInstall --sync | source $MYVIMRC
"\| endif



set number
call plug#begin('~/.vim/plugged')
Plug 'habamax/vim-godot' 
Plug 'preservim/nerdtree'
Plug 'dracula/vim'
Plug 'itchyny/lightline.vim' 
" Make sure you use single quotes

  " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
  Plug 'junegunn/vim-easy-align'

  " Any valid git URL is allowed
  Plug 'https://github.com/junegunn/vim-github-dashboard.git'

  " Multiple Plug commands can be written in a single line using | separators
  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

  " On-demand loading
  Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

  " Using a non-default branch
  Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

  " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
  Plug 'fatih/vim-go', { 'tag': '*' }

  " Plugin options
  Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

  " Plugin outside ~/.vim/plugged with post-update hook
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

  " Unmanaged plugin (manually installed and updated)
  Plug '~/my-prototype-plugin'

  " Initialize plugin system

"Plug 'mhinz/vim-startify'
call plug#end()

"Lightline config start
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif
set noshowmode
"Lightline config end


:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul
:set mouse=n
:set tabstop=4
:set shiftwidth=4
:set expandtab

"To fix Background issue
set t_Co=256
set background=dark
colorscheme dracula
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

