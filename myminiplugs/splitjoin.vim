" !TODO handle equalsigns and strings
"
function! MyJoin() range
    if a:firstline == a:lastline
        execute '.join'
    else
        execute a:firstline . ',' . a:lastline . 'join'
    endif
    execute 's/(\s\+/(/e'
    execute 's/\s\+)/)/e'
    execute 's/\[\s\+/\[/e'
    execute 's/\s\+]/]/e'
    execute 's/{\s\+/{/e'
    execute 's/\s\+}/}/e'
    execute 's/,\s\+/, /e'
    execute 's/\s\+$//e'
endfunction

function! MySplit() range
    if a:firstline == a:lastline
        let l:rng = '.'
    else
        let l:rng = a:firstline . ',' . a:lastline
    endif
    execute l:rng . 's/,\s\+/,\r/ge'
    let l:nummove = line('.') - a:firstline
    execute 'normal V' . l:nummove. 'k='
endfunction

" function !MySplit

" command! -nargs=* -range -bang  MyJoin <line1>,<line2>call MyJoin(<q-args>, <bang>)
command! -nargs=* -range -bang  MyJoin <line1>,<line2>call MyJoin()
command! -nargs=* -range -bang  MySplit <line1>,<line2>call MySplit()

