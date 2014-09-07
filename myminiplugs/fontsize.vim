" see http://vim.wikia.com/wiki/Change_font_size_quickly
nnoremap <C-ScrollWheelUp> :silent! let &guifont = substitute( &guifont, ' \zs-\?\d\+$', '\=eval(submatch(0)+1)', '')<CR>
nnoremap <C-ScrollWheelDown> :silent! let &guifont = substitute( &guifont, ' \zs-\?\d\+$', '\=eval(submatch(0)-1)', '')<CR>
nnoremap <C-K> :silent! let &guifont = substitute( &guifont, ' \zs-\?\d\+$', '\=eval(submatch(0)+1)', '')<CR>
nnoremap <C-J> :silent! let &guifont = substitute( &guifont, ' \zs-\?\d\+$', '\=eval(submatch(0)-1)', '')<CR>
