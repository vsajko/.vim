setlocal list
" setlocal colorcolumn=5,9,13,17,21,25,29,33,80,120
" setlocal colorcolumn=80,120
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

if exists('g:loaded_swapit')
    ClearSwapList
    SwapList pythonlog DEBUG INFO WARNING ERROR CRITICAL
    SwapList pythonlog_lcase debug info warning error critical
    SwapList handlers console file
endif

command! Isort :!isort %

set formatprg=autopep8\ /dev/stdin\ --max-line-length=80
