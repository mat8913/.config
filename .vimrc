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
autocmd FileType gitcommit setlocal spell

" Plugins
call pathogen#infect()

set directory=~/.vim/tmp

let g:syntastic_mode_map = { 'mode': 'active' }
let g:syntastic_c_checkers = ['gcc']
let g:syntastic_d_include_dirs = [ '~/d/Derelict3/import/', 'src' ]

set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim/

let g:solarized_termtrans = 1
colorscheme solarized

nnoremap <F5> :GundoToggle<CR>

set guioptions-=L
set guioptions-=r

" Plugin list:
"   * Pathogen
"   * Syntastic
"   * Powerline
"   * Solarized
"   * Fugitive
"   * Gundo
