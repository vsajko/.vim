function! Qflistmanipulation()
    let lista = getqflist()
    let newlist = []
    let comparedict = {}
    for item in lista
        let listabufnamefull = fnamemodify( bufname(item.bufnr) , ":p" )
        let resolvedbufname = resolve( listabufnamefull )
        if item.lnum > get( comparedict, resolvedbufname) && filereadable(resolvedbufname) 
            let newdict = {'lnum': item.lnum, 'col': item.col, 'vcol': item.vcol, 'text': item.text }
            if ( listabufnamefull != resolvedbufname ) "fajl je symlink, dodajemo vrijednosti na filename
"                let newdict['filename'] = resolvedbufname
"                let newdict['filename'] = fnamemodify( resolvedbufname, ':~:.')
                let newdict['filename'] = fnamemodify( resolvedbufname, ':.')
            else "fajl nije symlink , kopiramo stare vrijednosti na bufnr
                let newdict['bufnr'] = item.bufnr
            endif
            let lnum = item.lnum
            call add( newlist, newdict )
            let comparedict[resolvedbufname]=lnum
        endif
    endfor
    call setqflist( newlist, ' ' )
endfunction

function! RenameBufferToResolved()
    let bufnumber = bufnr("%")
    let buffername = bufname('%')
    if buffername != '' && &buftype == ''
        let buffernamefull = fnamemodify( buffername, ':p' )
        let resolvedbufname = resolve( buffernamefull )
"        if buffernamefull != resolvedbufname && bufexists(bufnumber) && !bufexists(buffernamefull)
"        if buffernamefull != resolvedbufname && bufexists(bufnumber)
        if buffernamefull != resolvedbufname && bufexists(bufnumber)
"        if buffernamefull != resolvedbufname
            execute "enew"
            execute "bw" . bufnumber
"            execute "e " . fnamemodify( resolvedbufname, ':~:.')
            execute "e " . fnamemodify( resolvedbufname, ':.')
"            execute "e " . resolvedbufname 
        endif
    endif
endfunction
" `/bin/readlink -f'
function! SameFileAsResolved() 
    let bufnumber = bufnr("%")
    let buffername = bufname('%')
    if buffername != '' && &buftype == ''
        let buffernamefull = fnamemodify( buffername, ':p' )
        let resolvedbufname = resolve( buffernamefull )
        if buffernamefull != resolvedbufname 
            echo buffernamefull
            echo 'resolved: ' . resolvedbufname
        endif
    endif
endfunction


"au BufNewFile,BufRead * call RenameBufferToResolved()
au BufNewFile,BufRead * call SameFileAsResolved()
"au QuickfixCmdPost vimgrep call Qflistmanipulation()
