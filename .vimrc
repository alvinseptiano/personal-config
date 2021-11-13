set number
set laststatus=2
set noshowmode
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=n
"VIM-PLUG
call plug#begin()
Plug 'habamax/vim-godot'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'jceb/vim-orgmode'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-speeddating'
Plug 'mhinz/vim-startify'
"Plug 'neoclide/coc.nvim'", {'branch': 'release'}
call plug#end()

"Set lighting colorscheme
let g:lightline = { 
	\ 'colorscheme': 'dracula',
	\ }

"Godot function
func! GodotSettings() abort
    setlocal foldmethod=expr
    setlocal tabstop=4
    nnoremap <buffer> <F4> :GodotRunLast<CR>
    nnoremap <buffer> <F5> :GodotRun<CR>
    nnoremap <buffer> <F6> :GodotRunCurrent<CR>
    nnoremap <buffer> <F7> :GodotRunFZF<CR>
endfunc
augroup godot | au!
    au FileType gdscript call GodotSettings()
augroup end

"To fix background error
set t_Co=256
set background=dark
colorscheme dracula
highlight Normal ctermbg=NONE	
highlight nonText ctermbg=NONE
