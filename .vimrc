set nocompatible
set backspace=indent,eol,start
set number
filetype plugin on
syntax on
set fileencoding=utf-8

map <F4> :Vimwiki2HTML<cr>
map <S-F4> :!VimwikiAll2HTML<cr>

call plug#begin('~/.vim/plugged')
Plug 'vimwiki/vimwiki'
call plug#end()

let g:vimwiki_list = [{'path':'~/dev2/minecraft-gonglve.github.io/wiki/',
	\ 'path_html':'~/dev2/minecraft-gonglve.github.io/'}]
