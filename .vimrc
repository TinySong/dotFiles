set runtimepath+=~/.vim_runtime
"set nocompatible
""set cscope
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"set cscopequickfix=s-,c-,d-,i-,t-,e-  
"set cst
"set number
"set smartindent
"set syntax=on
"set tags=./tags,./../tags,.tags
"nnoremap <silent> <F11> :AV<CR>
"nnoremap <silent> <F3> :Grep<CR>
"
"" ********************** folds ****************************************
"" ':help folding' for details.
"" press zc and see how the text folds up
"" press zc and see how the text folds up
"set foldmethod=indent
"" use za to 'a'lternate between opening and closing a fold respectively
":nnoremap <space> za  
"" ********************** folds ****************************************
"
""""quickfix windows"""
"noremap <F7> :botright copen<CR>
"nnoremap <F6> :cclose<CR>
"filetype on
"let g:SuperTabRetainCompletionType=2
"let g:SuperTabDefaultCompletionType="context"  
""let g:SuperTabDefaultCompletionType="<C-X><C-O>"
"""""""""""""""""""""""""""
"""=>  minibufexplorer
"""""""""""""""""""""""""""
"let g:miniBufExplMapWindowNavVim = 1   
"let g:miniBufExplMapWindowNavArrows = 1   
"let g:miniBufExplMapCTabSwitchBufs = 1   
"let g:miniBufExplModSelTarget = 1  
"let g:miniBufExplMoreThanOne= 0
"
"""""""""""""""""""""""""""
""">      winmanager 
"""""""""""""""""""""""""""
""let g:NERDTree_title="[NERDTree]"  
""let g:winManagerWindowLayout="NERDTree|TagList"  
"" g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer'
"let g:NERDTree_title="[FileExplorer]"  
"let g:winManagerWindowLayout="FileExplorer,TagsExplorer,BufExplorer|TagList"  
"let g:winManagerWidth = 30
"""""""""""""""""""""""""""""
"""> python
"""""""""""""""""""""""""""""
"let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
"
""set hlsearch
""set incsearch
"function! NERDTree_Start()  
"    exec 'NERDTree'  
"endfunction  
"
"function! NERDTree_IsValid()  
"    return 1  
"endfunction  
nmap wm :WMToggle<CR>
let Tlist_Exit_OnlyWindow=1
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
