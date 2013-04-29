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
"set showcmd
set hlsearch
nore ; :
nore , ;
set tabstop=4
set shiftwidth=4
set expandtab
call pathogen#infect()
let g:syntastic_mode_map = { 'mode': 'active' }
let g:syntastic_c_checkers = ['gcc']
set directory=~/.vim/tmp
set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set noshowmode
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized
autocmd FileType make setlocal noexpandtab
let g:syntastic_d_include_dirs = [ '~/d/Derelict3/import/', 'src' ]
