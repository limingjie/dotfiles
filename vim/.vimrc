" posix compatible shell
set shell=/bin/zsh

" 256 colors
if &term == "screen"
  set t_Co=256
endif

" set syntax on
syntax on

" enable line number
set number

" vertical ruler on column 80
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" buffers
set hidden   " hide buffers in background, instead of closing and re-opening
set confirm  " confirm before closing with unsaved buffers

" indentation
set tabstop=4     " size of hard tabstop (\t)
set shiftwidth=4  " size of indent
set softtabstop=4 " size of soft tabstop
set smarttab      " 
set expandtab     " use space instead of tab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" key bindings
"
set pastetoggle=<F2>               " toggle paste
inoremap jj     <Esc>              " use jj as <Esc>
inoremap <F3>   <Esc>:bp<CR>       " previous buffer in insert mode
inoremap <F4>   <Esc>:bn<CR>       " next buffer in insert mode
nnoremap <Tab>       :bn<CR>       " next buffer in command mode
nnoremap <S-Tab>     :bp<CR>       " previous buffer in command mode
nnoremap <F3>        :bp<CR>       " previous buffer in command mode
nnoremap <F4>        :bn<CR>       " next buffer in command mode
nnoremap <F5> :buffers<CR>:buffer<Space>  " list and goto buffer

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugins
"
" plugin manager
execute pathogen#infect()
filetype plugin indent on

" vim-airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled=1 " enable tabline
let g:airline#extensions#tmuxline#enabled=1 " enable tmuxline

" vim gitgutter
let g:gitgutter_diff_args='-w'
let g:gitgutter_realtime=1

" theme gruvbox
set background=dark
colorscheme gruvbox

