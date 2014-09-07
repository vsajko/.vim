autocmd! afterlinter

augroup afterlinter
    autocmd BufWritePost *.py call AfterLinterPostHook()
augroup END

function! AfterLinterPostHook()
     let lintercommand='pylint.wrap.sh ' .  string(bufname(str2nr(bufnr(""))))
     call vimproc#system_bg(lintercommand)
     
endfunction
