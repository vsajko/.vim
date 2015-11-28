function! GuiTabLabel()
    let label = tabpagenr() . '|'
    let bufnrlist = tabpagebuflist(v:lnum)

    " Add '+' if one of the buffers in the tab page is modified
    for bufnr in bufnrlist
        if getbufvar(bufnr, "&modified")
            let label = '+ ' . label
            break
        endif
    endfor

    " Append the number of windows in the tab page if more than one
    let wincount = tabpagewinnr(v:lnum, '$')
    let label .= wincount . ' '
    " if wincount > 1
    "     let label .= wincount
    " endif
    " if label != ''
    "     let label .= ' '
    " endif

    " Append the buffer name
    " return label . bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
    return label . pathshorten(bufname(bufnrlist[tabpagewinnr(v:lnum) - 1]))
    " return label
endfunction

set guitablabel=%{GuiTabLabel()}
