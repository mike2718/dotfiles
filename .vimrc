set nocompatible
set number
filetype plugin on
syntax on

map <F4> :Vimwiki2HTML<cr>
map <S-F4> :VimwikiAll2HTML<cr>

let g:vimwiki_diary_months = {
    \ 1: '一月', 2: '二月', 3: '三月', 4: '四月', 5: '五月', 6: '六月',
    \ 7: '七月', 8: '八月', 9: '九月', 10: '十月', 11: '十一月', 12: '十二月'
    \ }                         " 设置日期显示文字

autocmd FileType vimwiki setlocal wrap " 折行

let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr,img' " 设置可以在笔记中使用的Html Tag

let g:vimwiki_list = [{'path':'~/dev2/minecraft-gonglve.github.io/text/',
	\ 'path_html':'~/dev2/minecraft-gonglve.github.io/',
	\ 'template_path': '~/dev2/minecraft-gonglve.github.io/templates/',
	\ 'template_default': 'def_template',
	\ 'template_ext': '.html',
	\ 'auto_export': 1 ,
	\ 'auto_toc': 1 },
	\ {'path':'~/dev2/mike2718.github.io/text/',
	\ 'path_html':'~/dev2/mike2718.github.io/game/',
	\ 'template_path': '~/dev2/mike2718.github.io/templates/',
	\ 'template_default': 'def_template',
	\ 'template_ext': '.html',
	\ 'auto_export': 1 ,
	\ 'auto_toc': 1 }]

let g:vimwiki_toc_header = '目录'


call plug#begin('~/.vim/plugged')
Plug 'vimwiki/vimwiki'
call plug#end()

