function! ToggleMenuAndToolbar()
    if &guioptions =~ '\CT'
        set guioptions-=T
    else
        set guioptions+=T
    endif
    if &guioptions =~ '\Cm'
        set guioptions-=m
    else
        set guioptions+=m
    endif
endfunction

function! ToggleFullscreen()
    call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endfunction

" nmap <silent> <C-F> :call ToggleFullscreen()<CR>
nmap <silent> <C-T> :call ToggleMenuAndToolbar()<CR>
