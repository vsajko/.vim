
let g:tgrepname='tf.pl'

function! Tgrep(input)
    let input = g:tgrepname . ' -grepnout ' . a:input
"    let oldgrepp=&grepprg
"    set grepprg=toolkitfind.pl\ -grepnoutput\ \ $*\ \|\ :copen
"    execute "grep " . a:lajna
"    let &grepprg=oldgrepp
"
    let qflist = []
    for lajna in split(system( input ) , "\n" )
        let qfdict={}
        let [ qfdict['filename'], qfdict['lnum'], qfdict['text'] ] = matchlist( lajna , '^\([^:]\+\):\(\d\+\):\(.\+\)$')[1:3]
        call add( qflist, qfdict )
    endfor
    if len(qflist) >= 1 
        call setqflist( qflist, 'r' )
        :copen
        echo len( qflist ) . " ITEMS FOUND: " . input
    else
        echo "NOTHING FOUND: " . input
    endif
endfunction

:command! -nargs=1 Tgrep call Tgrep(<q-args>)
:command! -nargs=1 Tgrepi call Tgrep('-i ' . <q-args>)
:command! -nargs=1 Tgrepa call Tgrep('".*" ' . <q-args>)
:command! -nargs=1 Tgrepai call Tgrep('-i ".*" ' . <q-args>)
