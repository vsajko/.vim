" function! MyBalloonExpr()
"     return  float2nr((0.00 + v:beval_lnum) / line('$') * 100.00) . "%\n" .
"                 \ bufname(v:beval_bufnr) . "\n" .
"                 \ tagbar#currenttag('%s','','f') . "\n" .
"                 \ ''
"                 " \ tagbar#currenttag('%s','','p')
" endfunction
" set bexpr=MyBalloonExpr()
" 
" 
function! MyLongBalloonExpr()
    return  MyBar(float2nr((0.00 + v:beval_lnum) / line('$') * 100.00))
endfunction

function! MyBar(pos)
    let factor = 10.00
    let retbar = ''
    let retbar .= bufname(v:beval_bufnr)
    let retbar .= "\n"
    let currfunc = tagbar#currenttag('%s','','f')
    let convposition = float2nr(round(a:pos/factor))
    for n in range(float2nr(factor)+1)
        if n == convposition
            let retbar .= a:pos . "% " . currfunc . "\n"
        else
            let retbar .= "...\n"
        endif
    endfor
    return retbar
endfunction

" let foo=MyBar(89)
" echo foo

set bexpr=MyLongBalloonExpr()
set ballooneval
    
" regex za match funkcije
" /^\s*def\s\+[^(]\+(\_.\{-1,}):/ 
