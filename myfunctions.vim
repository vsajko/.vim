function! CreateDesktopFile()
    if has("gui_running")
        let mylist =[ '[Desktop Entry]' ]
        call add( mylist, 'Encoding=UTF-8')
        call add( mylist, 'Name=Gvim ' . v:servername)
        call add( mylist, 'Comment=Gvim editor')
        call add( mylist, 'GenericName=Gvim editor')
        call add( mylist, 'X-GNOME-FullName=Gvim')
        call add( mylist, 'Terminal=false')
        call add( mylist, 'X-MultipleArgs=false')
        call add( mylist, 'Type=Application')
        call add( mylist, 'Icon=/home/vsajko/src/vim/runtime/vim16x16.png')
        call add( mylist, 'Categories=TextEditor;Development;')
        call add( mylist, 'MimeType=text/plain;')
        call add( mylist, 'StartupWMClass=GVim')
        call add( mylist, 'StartupNotify=true')
        "call add( mylist, 'Exec=gvim --servername "`kdialog --combobox 'izaberi '\`gvim --serverlist\` `" --remote %U')
        call add( mylist, 'Exec=gvim --servername ' . v:servername . ' --remote-tab-silent %F')

        " let filename = expand( '~/.local/share/applications/Gvim_created.desktop' )
        let filename = expand( '~/.local/share/applications/gvim.desktop' )
        call writefile( mylist, filename )
        execute "silent !update-desktop-database ~/.local/share/applications/"
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
