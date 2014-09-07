" nmap! <M-s> execute "normal :%s/\C\<\>/"
" nmap <M-s> normal ":%s/\C\<\>/"
function! KeywordVisualReplace(vis)
    :'<,'>s/\C\<\>/
endfunction

nmap <M-s> :%s/\C\<\>/
vmap <M-s> :<C-U>call KeywordVisualReplace(visualmode())<cr>

