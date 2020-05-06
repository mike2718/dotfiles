set nocompatible
set backspace=indent,eol,start
set number
filetype plugin on
syntax on
set fileencoding=utf-8

map <F4> :Vimwiki2HTML<cr>
map <S-F4> :VimwikiAll2HTML<cr>

let g:vimwiki_list = [{'path':'~/dev2/minecraft-gonglve.github.io/text/',
	\ 'path_html':'~/dev2/minecraft-gonglve.github.io/',
	\ 'template_path': '~/dev2/minecraft-gonglve.github.io/templates/',
	\ 'template_default': 'def_template',
	\ 'template_ext': '.html',
	\ 'auto_export': 1 ,
	\ 'auto_toc': 1 },
	\ {'path':'~/dev2/mike2718.github.io/text/',
	\ 'path_html':'~/dev2/mike2718.github.io/',
	\ 'template_path': '~/dev2/mike2718.github.io/templates/',
	\ 'template_default': 'def_template',
	\ 'template_ext': '.html',
	\ 'auto_export': 1 ,
	\ 'auto_toc': 1 }]

let g:vimwiki_toc_header = '目录'


call plug#begin('~/.vim/plugged')
Plug 'vimwiki/vimwiki'
call plug#end()

