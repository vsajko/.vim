autocmd! CursorMoved

function! MyCursorShow()
    " echo line('.')
    let percent = float2nr((0.00 + line('.')) / line('$') * 100.00)
    let currfunc = tagbar#currenttag('%s','','f')
    " let foo = system("osdctl -s " . line('.'))
    " let foo = system("osd_cat -p middle -i 90 -l 10 -d 1 -f -*-lucidatypewriter-bold-*-*-*-*-140-*-*-*-*-*-*  - &", MyBar(percent))
    let foo = system("osdctl -s '" . percent . "% " . currfunc . "' &")
    " let foo = system("osdctl -s '" . percent . "' &")
    " silent execute "!osdctl -s " . percent . ' &'
    " silent execute '!osdctl -s nnn &'
    " let foo = system("osdctl -l '," . percent . " ' &")
endfunction

function! MyBar(pos)
    let factor = 10.00
    let retbar = ''
    let convposition = float2nr(round(a:pos/factor))
    for n in range(float2nr(factor)+1)
        if n == convposition
            let retbar .= a:pos . "%\n"
            " let retbar .= "%\n"
        else
            let retbar .= "--" . n . ' ' . convposition . "\n"
        endif
    endfor
    return retbar
endfunction

autocmd!  CursorMoved * call MyCursorShow()
" cat /dev/urandom | xxd | osd_cat -l 22
"
" regex za match funkcije
" /^\s*def\s\+[^(]\+(\_.\{-1,}):/ 
" osdsh -f '-*-lucidatypewriter-bold-*-*-*-*-120-*-*-*-*-*-*' -p 2 -c red -a1 -d1
