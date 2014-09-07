function! GuiTabTooltip()
    let label = ''
    let bufnrlist = tabpagebuflist(v:lnum)

    let n = 0
    for bufnr in bufnrlist
        let n += 1
        if getbufvar(bufnr, "&modified")
            let label .= '+ '
            " break
        endif
        if n == tabpagewinnr(v:lnum)
            let label .= '>> '
            " let label .= tagbar#currenttag('> %s','','s')
            " let label .= "\n"
        endif
        let label .= bufname(bufnr)
        let label .= "\n\n"
    endfor

    if label != ''
        let label .= ' '
    endif

    
    return label

endfunction

set guitabtooltip=%{GuiTabTooltip()}
