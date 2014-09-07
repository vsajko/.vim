function! CreateKdeDesktopFile()
    if has("gui_running")
        let mylist =[ '[Desktop Entry]' ]
        call add( mylist, 'ServiceTypes=text/plain')
        call add( mylist, 'Actions=openInGvim_' . v:servername )
        call add( mylist, '' )

        call add( mylist, '[Desktop Action openInGvim_' . v:servername . ']')
        call add( mylist, 'Name=openInGvim_' . v:servername )
        call add( mylist, 'Icon=background')
        "call add( mylist, 'Exec=gvim --servername "`kdialog --combobox 'izaberi '\`gvim --serverlist\` `" --remote %U')
        call add( mylist, 'Exec=gvim --servername ' . v:servername . ' --remote %U')

        "    let mylist = [ v:servername ]
        "    call add( mylist , 'two')
        "    call add( mylist, "four" )

        let filename = expand( '~/.kde/share/apps/konqueror/servicemenus/openInGvim_' . v:servername . '.desktop' )
        call writefile( mylist, filename )
        "  !echo filecontent > createKdeDesktopFile.txt
    endif
endfunction
":au GUIEnter * silent call CreateKdeDesktopFile() 
":au VimEnter * silent call CreateKdeDesktopFile() 
":au VimLeave * silent call system("rm -rf ". expand( '~/.kde/share/apps/konqueror/servicemenus/openInGvim_' . v:servername . '.desktop' ) ) 

function! Synundercursor()
    let mysyn=''
    for id in synstack(line("."), col("."))
        let mysyn .= synIDattr( synIDtrans(id), "name") . ' '
    endfor
        return mysyn
endfunction
command! Synundercursor echo Synundercursor()


function! Scratch(vert)
    if a:vert
        vnew
    else
        new
    endif
    setlocal buftype=nofile bufhidden=hide noswapfile
    " normal <C-W><S-J>
endfunction

function! Pydoc(term, vert)
    call Scratch(a:vert)
    set filetype=rst
    execute "r !pydoc " . a:term
    normal gg
endfunction

function! Man(term, vert)
    call Scratch(a:vert)
    set filetype=man
    let width = winwidth('.') - 6
    execute "r !COLUMNS=" . width . " man " . a:term
    normal gg
endfunction
