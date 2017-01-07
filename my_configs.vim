"colorscheme vividchalk
colorscheme molokai
"set cursorline "光标为所在行加下划线
"set number "添加行号
"set autoread    "文件在其他vim之外修改过，自动重启读入
"set smartindent     "自动根据当前行的缩进预测下一行的缩进
"set foldmethod=syntax   "代码折叠
""set fileencoding=utf-8,gbk "使用utf-8或者gbk打开文件
"map <F5> call CompileRunMake()<CR>
"func! CompileRunMake()
"exec "make"
"endfunc
"map <F4> :silent! Tlist<CR> 
""设置关闭和打开taglist窗口的快捷键
syn on                      "语法支持
"common conf {{             通用配置
set ai                      "自动缩进
set bs=2                    "在insert模式下用退格键删除
set showmatch               "代码匹配
set laststatus=2            "总是显示状态行
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4    "自动缩进
set tabstop=4   "缩进
set softtabstop=4 "方便在开启了et后使用退格（backspace）键，每次退格将删除X个空格
set expandtab
set cursorline              "为光标所在行加下划线
set number                  "显示行号
set autoread                "文件在Vim之外修改过，自动重新读入

set autoindent      "使用你当前行的缩进来设置你下一行的缩进
set smartindent  "自动根据当前行的缩进，预测下一行的缩进


set ignorecase              "检索时忽略大小写
set fileencodings=uft-8,gbk "使用utf-8或gbk打开文件
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
set foldmethod=syntax       "代码折叠

""set mouse=a     "鼠标
"}}
"

"conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>
set tags=./tags,./../tags,.tags
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: Tinysong") 
        call append(line(".")+2, "\# mail: TinySong1226@gmail.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "\#!/bin/bash") 
        call append(line(".")+6, "") 
    else 
        call setline(1, "/*************************************************************************") 
    call append(line("."), "    > File Name: ".expand("%")) 
    call append(line(".")+1, "  > Author: Tinysong") 
    call append(line(".")+2, "  > Mail: TinySong1226@gmail.com ") 
    call append(line(".")+3, "  > Created Time: ".strftime("%c")) 
    call append(line(".")+4, " ************************************************************************/") 
    call append(line(".")+5, "")
endif
if &filetype == 'cpp'
    call append(line(".")+6, "#include<iostream>")
    call append(line(".")+7, "using namespace std;")
    call append(line(".")+8, "")
endif
if &filetype == 'c'
    call append(line(".")+6, "#include<stdio.h>")
    call append(line(".")+7, "")
endif
if &filetype == 'java'
    "       call append(line(".")+6,"public class ".expand("%"))
    "       call append(line(".")+7,"")
endif                                                                                                                                                                                            
"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G
           endfunc
"pathogen是Vim用来管理插件的插件
"pathogen{
call pathogen#infect()
"}
set hlsearch
set incsearch
filetype plugin on 
"newfile配置
let g:auther_name="M.Song"
let g:auther_email="TinySong1226@gmail.com"
let g:license="gpl3"
"enable the tools for cmake or doxygen"
let  g:C_UseTool_cmake    = 'yes' 
let  g:C_UseTool_doxygen = 'yes' 
"airline{
"set t_Co=256 
let g:airline#extensions#tabline#enabled = 1 "标签
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"set laststatus=2
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
set guifont = Source_Code_Pro:h15
set rtp+=/Library/Python/2.7/site-packages/powerline_status-2.5.dev9999+git.69a72dbf6918b77464b79553fb624f6be77d3278-py2.7.egg/powerline/bindings/vim/
set laststatus=2
set t_Co=256
