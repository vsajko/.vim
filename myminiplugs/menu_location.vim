" menu! Test 
menu! Test.jedan :
menu! Test.dva :

function! MyMenuShow()
    aunmenu Test.
    let percent = float2nr((0.00 + line('.')) / line('$') * 100.00)
    execute('menu! Test.percentl<tab>' . percent . ':echo "bla"')
endfunction

let foo = MyMenuShow()
popup Test

" autocmd!  CursorMoved * call MyMenuShow()

" :nmenu Words.Add\ Var		wb"zye:menu! Words.<C-R>z <C-R>z<CR>
" :nmenu Words.Remove\ Var	wb"zye:unmenu! Words.<C-R>z<CR>
" :vmenu Words.Add\ Var		"zy:menu! Words.<C-R>z <C-R>z <CR>
" :vmenu Words.Remove\ Var	"zy:unmenu! Words.<C-R>z<CR>
" :imenu Words.Add\ Var		<Esc>wb"zye:menu! Words.<C-R>z <C-R>z<CR>a
" :imenu Words.Remove\ Var	<Esc>wb"zye:unmenu! Words.<C-R>z<CR>a

