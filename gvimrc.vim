set guioptions=aAegimtTpl

"no visualbell and no beep
set visualbell t_vb=

set toolbariconsize=tiny
" set guifont=DejaVu\ Sans\ Mono\ 10
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10

" set guifont=Inconsolata\ 10
" set guifont=Meslo\ LG\ M\ 10
" set guifont=M+\ 1mn\ Medium\ 10
" set guifont=Luculent\ 10
" set guifont=Anka/Coder\ Narrow\ Condensed\ 10
" set guifont=Anka/Coder\ Condensed\,\ Semi-Condensed\ 10
" set guifont=Anka/Coder\ 10
" set guifont=Envy\ Code\ R\ 10 
set guifont=Fantasque\ Sans\ Mono\ 10


" set guifont=Inconsolata\ for\ Powerline\ Medium\ 10
" set guifont=Meslo\ LG\ S\ DZ\ 10
" set guifont=Monaco\ 12
" set guifont=Monospace\ 8
" set guifont=Source\ Code\ Pro\ Medium\ 10
" set guifont=Ubuntu\ Mono\ 12
set linespace=2
"colorscheme earendel
set background=dark
"colorscheme molokai
"colorscheme earendel
colorscheme earendel_my
" colorscheme gruvbox

amenu icon=~/.vim/pixmaps/insertTime.xpm ToolBar.InsertTime <ESC><ESC>:execute "normal a" .  strftime("%FT%T")<CR>
menu icon=~/.vim/pixmaps/cd.xpm ToolBar.cdToFilesDir <ESC>:cd %:h<CR>
menu icon=~/.vim/pixmaps/cdBellow.xpm ToolBar.cdToBellowFilesDir <ESC>:cd %:h \| cd ..<CR>
menu icon=~/.vim/pixmaps/nerdtree.xpm ToolBar.nerdtree <ESC>:NERDTreeToggle<CR>
menu icon=~/.vim/pixmaps/vimcommander.xpm ToolBar.vimcommander <ESC>:call VimCommanderToggle()<CR>
amenu icon=~/.vim/pixmaps/diffthis.xpm ToolBar.diffthis :diffthis<Cr>
amenu icon=~/.vim/pixmaps/diffoff.xpm  ToolBar.diffoff :diffoff \| set nowrap<Cr>
amenu icon=~/.vim/pixmaps/diffoffAll.xpm  ToolBar.diffoffAll :diffoff! \| windo set nowrap \| windo set noscrollbind \| windo set nocursorbind<Cr>
amenu icon=~/.vim/pixmaps/diffnext.xpm ToolBar.diffnext ]c
amenu icon=~/.vim/pixmaps/diffprev.xpm ToolBar.diffprev [c
amenu icon=~/.vim/pixmaps/diffget.xpm  ToolBar.diffget :diffget<Cr>
amenu icon=~/.vim/pixmaps/diffput.xpm  ToolBar.diffput :diffput<Cr>

menu ToolBar.-Sep-	:
menu icon=~/.vim/pixmaps/deleteBuffer.xpm ToolBar.DeleteBuffer <ESC>:bw<CR>

tmenu ToolBar.DeleteBuffer delete buffer
tmenu ToolBar.cdToFilesDir cd to buffers dir
tmenu ToolBar.cdToBellowFilesDir cd to buffer parent dir
tmenu ToolBar.nerdtree nerdtree
tmenu ToolBar.vimcommander vimcommander
tmenu ToolBar.diffthis diffthis
tmenu ToolBar.diffoff diffoff
tmenu ToolBar.diffoffAll diffoff!
tmenu ToolBar.diffnext next diff
tmenu ToolBar.diffprev prev diff
tmenu ToolBar.diffget diffget
tmenu ToolBar.diffput diffput

winpos 26 0
set lines=45
set columns=140


" menu tips
nmenu Mapsreminder.š<tab>ysiw :
nmenu Mapsreminder.đ<tab>ds :
nmenu Mapsreminder.č<tab>cs :
nmenu Mapsreminder.ć<tab>iw :
nmenu Mapsreminder.ž<tab>viw :
nmenu Mapsreminder.alt_y<tab>ys :

" imap <C-d> <C-R>=strftime("%F %T")<cr>
" 
so ~/.vim/myminiplugs/fullscreen.vim
so ~/.vim/myminiplugs/guitabtooltips.vim
" so ~/.vim/myminiplugs/balloon_location.vim
so ~/.vim/myminiplugs/fontsize.vim

command! Mc execute 'silent !xfce4-terminal --icon MidnightCommander -x bash -c "MYVIM=' . v:servername . ' EDITOR=gvim_mc_wrap.sh mc"'
command! Ranger execute 'silent !xfce4-terminal --icon MidnightCommander -x bash -c "MYVIM=' . v:servername . ' ranger"'

function! Make_wrapper()
    let cont = [ "#!/bin/bash", "gvim --servername " . v:servername . " --remote-tab $*"]
    call writefile(cont, glob("~/bin/gvim_wrapper.sh"))
endfunction
command! Makewrapper call Make_wrapper()

function! EditRemote(sname, fname)
    let l:fname = fnamemodify(a:fname, ":p")
    call remote_send(a:sname, "<Esc>:tabedit " . l:fname . "<Cr>")
endfunction

command! -nargs=* -complete=file RemoteEdit call EditRemote(<f-args>)

" set guicursor=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
set guicursor=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor,a:blinkon0
