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
autocmd FileType make setlocal noexpandtab
set list
set listchars=tab:▸\ ,trail:.

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


" Plugin list:
"   * Pathogen
"   * Syntastic
"   * Powerline
"   * Solarized
"   * Fugitive
"   * Gundo
