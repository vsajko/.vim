setlocal list
setlocal colorcolumn=80
setlocal iskeyword=@,48-57,_,192-255
" python-script_30
" jump to previous function
map <buffer> <leader>fk   :call PythonDec("function", -1)<CR>

" jump to next function
map <buffer> <leader>fj   :call PythonDec("function", 1)<CR>

" nnoremap <silent> <buffer> ]] :call <SID>Python_jump('/^\s*\(class\\|def\)')<cr>
" nnoremap <silent> <buffer> [[ :call <SID>Python_jump('?^\s*\(class\\|def\)')<cr>

inoremap <buffer><c-b> :set iskeyword+=.<nl>a<c-n>
autocmd CompleteDone *.py set iskeyword-=.








