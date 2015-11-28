function! s:InactiveCommands()
    " define actions executed when nothing happens
    setlocal colorcolumn=80,100,120
    setlocal cursorline
endfunction

function! s:ActiveCommands()
    " define actions executed when start typing, scrolling
    setlocal colorcolumn=
    setlocal nocursorline
endfunction

" do not edit bellow
"-------------------------------------------------------------------------------

function! s:SetInactive()
    call s:InactiveCommands()
    call s:AusActivity()
endfunction

function! s:SetActive()
    call s:ActiveCommands()
    autocmd! activity
endfunction

function! s:AusInactivity()
    augroup inactivity
        autocmd!
        autocmd CursorHold,CursorHoldI * call <SID>SetInactive()
    augroup END
endfunction

function! s:AusActivity()
    augroup activity
        autocmd!
        autocmd CursorMoved,CursorMovedI,WinEnter * call <SID>SetActive()
    augroup END
endfunction

call s:AusInactivity()
call s:AusActivity()

augroup activity
  autocmd WinEnter * call <SID>SetActive()
augroup END

augroup inactivity
  autocmd WinLeave * call <SID>SetInactive()
augroup END
