set t_Co=256
set nocp
imap <Tab> <Esc>
set wildmode=longest,list
set wildmenu
set backspace=2
set ruler
set number
syntax on
:command WQ wq
:command Wq wq
:command W w
:command Q q
set autoindent
set hlsearch
nore ; :
nore , ;
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set laststatus=2
set noshowmode
set background=dark
set list
set listchars=tab:▸\ ,trail:.

" File specific options
autocmd FileType make setlocal noexpandtab
autocmd FileType markdown setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab textwidth=80 spell
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab textwidth=79
autocmd FileType haskell setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab textwidth=80
autocmd FileType perl setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd FileType wml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd FileType gitcommit setlocal textwidth=72 spell
autocmd FileType mail setlocal textwidth=80 spell
autocmd FileType text setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab spell

" Plugins
call pathogen#infect()

set directory=~/.vim/tmp//

let g:syntastic_mode_map = { 'mode': 'active' }
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_d_include_dirs = [ '~/d/Derelict3/import/', 'src' ]

set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim/

let g:solarized_termtrans = 1
colorscheme solarized

nnoremap <F5> :GundoToggle<CR>

set guioptions-=L
set guioptions-=r

if has("gui_running")
	set lines=999999
	set columns=80
	set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 14
	set background=light
endif

if filereadable(".noswap")
	set noswapfile
endif


" Plugin list:
"   * Pathogen
"   * Syntastic
"   * Powerline
"   * Solarized
"   * Fugitive
"   * Gundo
