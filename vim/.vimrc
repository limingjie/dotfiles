" posix compatible shell
set shell=/bin/bash

" 256 colors
if &term == "screen"
  set t_Co=256
endif

" syntax on
syntax on

" line number on
set number

" Plugin Manager
execute pathogen#infect()
filetype plugin indent on

" vim-airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='dark'

" vim gitgutter
let g:gitgutter_diff_args='-w'
let g:gitgutter_realtime=1

" theme gruvbox
set background=dark
colorscheme gruvbox
