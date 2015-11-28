set nocompatible
set runtimepath+=~/.vim/neobundle/neobundle.vim/
set runtimepath+=~/Private/.dotfiles_private/dots/.vim_private/

" Required:
call neobundle#begin(expand('~/.vim/neobundle/'))
let g:neobundle#log_filename='/home/vsajko/.vim/neobundle/neobundle.log'

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
let g:make = 'make'

source ~/.vim/neobundle_bundles.vim

NeoBundleLocal ~/.vim/bundle
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" nebundle end 

set nocompatible
" runtime bundle/pathogen/autoload/pathogen.vim
" call pathogen#infect()

set fileformats=unix,dos,mac
" set nofixendofline
let mapleader=","
set background=dark 
if &term =~ 'xterm'
    let &t_Co=256
endif
if &t_Co==256 || &t_Co==88
    colorscheme luna-term
endif

if &term =~ '^xterm' || &term =~ "rxvt"
  " solid underscore
  let &t_SI .= "\<Esc>[5 q"
  " solid block
  let &t_EI .= "\<Esc>[1 q"
  " new in 7.4.687
  let &t_SR .= "\<Esc>[3 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
endif

" if &term =~ "xterm\\|rxvt"
if &term =~ "DISABLE rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;blue\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;gray\x7"
  " new in 7.4.687
  let &t_SR .= "\<Esc>]12;purple\x7"
  " silent !echo -ne "\033]12;red\007"
  " reset cursor when vim exits
  " autocmd VimLeave * silent !echo -ne "\033]037m\007"
  " use \003]12;gray\007 for gnome-terminal
endif

" time in miliseconds to wait for next key after <Esc> in term
" disables mappings like `` and this is bad
" set timeoutlen=100
syntax on
set synmaxcol=150
filetype plugin on
filetype indent on

set hlsearch
set incsearch

"no bell at all
set visualbell t_vb=
set listchars=tab:¦\ ,trail:»,extends:~,precedes:~,nbsp:±
set showbreak=««
set display=lastline
set nolinebreak
set nowrap
set virtualedit=block

set list

" don't break long lines
set textwidth=0

"indenting 
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set showcmd

set backspace=indent,eol,start

set sessionoptions=buffers,curdir,folds,tabpages,winpos,winsize,resize,help
set sessionoptions-=options
set sessionoptions-=folds
set sessionoptions-=winpos
set sessionoptions-=winsize
set sessionoptions-=resize

set history=220
set viminfo='20,<50,s10,h,%,!
set autoread

set updatetime=2000

" Make shift-insert work like in Xterm
"map <S-Insert> <MiddleMouse>
"map! <S-Insert> <MiddleMouse>
imap <S-Insert> <C-R><C-O>*
cmap <S-Insert> <C-R><C-O>*
"imap! <S-Insert> <MiddleMouse>


"new window positioning
set noequalalways
set splitbelow
set splitright
set winminheight=0

"moving between windows
nmap <C-Down> <C-w>j
nmap <C-Up> <C-w>k
nmap <C-Left> <C-w>h
nmap <C-Right> <C-w>l

"next/previous buffer
nmap  <C-TAB> :bn<Cr>
nmap  <C-S-TAB> :bp<Cr>

" cabbrev tab tabnew
nmap <M-PageDown> :tabmove +1<cr>
nmap <M-PageUp> :tabmove -1<cr>
command TN tabnew
command TC tabclose

"allwas show status line
:set laststatus=2
set ignorecase
set tagcase=match
"set nostartofline
set lazyredraw

"scroll with shift arrows
nnoremap <S-Up> 3<C-Y>
nnoremap <S-Down> 3<C-E>

set mouse=a    
set mousehide		" Hide the mouse when typing text
set mousemodel=popup_setpos

"set directory=~/tmp/vim//
set directory=
set noswapfile
"set backupdir=~/tmp/vim/
set backupdir=

set backupext=\.~
":au BufWritePre * let &backupext = substitute(expand('%:h'),'/','%','g') . '.' . strftime("%Y%m%d.%X.") . '~'
set nobackup
set nowritebackup

set undodir=~/tmp/vim/
set undofile

set wildmenu
set title

set complete=.,w,b,u,t,k

command Scratch :new | setlocal buftype=nofile bufhidden=hide noswapfile | normal <C-W><S-J>
command TabScratch :tabedit | setlocal buftype=nofile bufhidden=hide noswapfile
command TS :tabedit | setlocal buftype=nofile bufhidden=hide noswapfile
command VScratch :vnew | setlocal buftype=nofile bufhidden=hide noswapfile 
command Toent !toentities.pl

vmap  <M-Right>     dp`[v`]
vmap  <M-Left>      dhP`[v`]
vmap  <S-M-Right>     y`>gp`[v`]
vmap  <S-M-Left>      yP`[v`]

vmap <silent> <M-Up> <Esc>:'<,'>m '<-2<CR>gv
vmap <silent> <M-Down> <Esc>:'<,'>m '>+1<CR>gv
nmap <silent> <M-Down> :.m +1<CR>
nmap <silent> <M-Up> :.m-2<CR>
imap <silent> <M-Down> <Esc>:m+<CR>
imap <silent> <M-Up> <Esc>:m-2<CR>

nmap <S-M-Down> :.co +0<CR>
nmap <S-M-Up> :.co -1<CR>
vmap <silent> <S-M-Up> <Esc>:'<,'>co '<-1<CR>gv
vmap <silent> <S-M-Down> <Esc>:'<,'>co '>+0<CR>gv
imap <silent> <S-M-Down> <Esc>:co+0<CR>
imap <silent> <S-M-Up> <Esc>:co-1<CR>

cabbrev fsort %sort /^[^\|]*\//
"filename to register f
nmap ,yf :let @f=expand("%:p")<CR>
cabbrev tof r !toolkitfind.pl

hi MatchParen ctermbg=0 guibg=#181818 ctermfg=white guifg=white gui=bold cterm=bold

"shift select from insert mode
imap <S-Down>      <Esc>vj
imap <S-Up>        <Esc>vk
imap <S-Right>     <Right><Esc>ve
imap <S-Left>      <Esc>vb

"control cele/backspace in insert mode delete words
imap <C-Delete> <Right><Esc>dei
imap <C-Bs> <C-W>

"traži samo u visual area
map <M-/> <Esc>/\%V
"replace samo u visual area
map <M-:> <Esc>:'<,'>s/\%V
"broji matcheve
" map <M-n> :%s/<C-r>///gn<Cr>
map <M-n> :%s///gn<Cr>

"ask before leaving changed buffer
set confirm

"jump to tag
"nmap <Leader>t <C-]>
" map <C-LeftMouse> :tjump <C-R><C-W><Cr>
map <Leader>tj :tjump <C-R><C-W><Cr>
inoremap <c-g> <c-x><c-]>
"
"put from 0 register to allow multiple putting
vnoremap p "0p
vnoremap P "0P
"perldoc
command! -nargs=1 Pd  silent new <args> | setlocal buftype=nofile bufhidden=hide noswapfile | exe "r !perldoc -T <args>" | normal gg
command! -nargs=1 Pdf silent new <args> | setlocal buftype=nofile bufhidden=hide noswapfile | exe "r !perldoc -T -f <args>" | normal gg
command! -nargs=1 Pdq silent new <args> | setlocal buftype=nofile bufhidden=hide noswapfile | exe "r !perldoc -T -q <args>" | normal gg
"make R to read output of command (r !<command>)
command! -nargs=* -complete=shellcmd R  new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>

command! -nargs=1 Trazi execute "new | setlocal buftype=nofile bufhidden=hide noswapfile | r !find . -path '*/.svn' -prune -o -type f | grep <args>" | :exe "match WarningMsg '<args>'" 
command! -nargs=* Ls execute "new | setlocal buftype=nofile bufhidden=hide noswapfile | r !ls -rtlFh --group-directories-first --time-style='long-iso' <args>" | :normal $
command! -nargs=1 Youngest execute "new | setlocal buftype=nofile bufhidden=hide noswapfile | r !find . -path '*/.svn/*' -prune -o -type f -print0 | xargs -r0 stat -c \\%y\\ \\%n | sort | tail -n<args>"
command! -nargs=* Tree execute "new | setlocal buftype=nofile bufhidden=hide noswapfile | r !tree -n <args>"

" command! -nargs=1 Pydoc execute "new | setlocal buftype=nofile bufhidden=hide noswapfile | r !pydoc <args><cr>"
" command! -nargs=1 Pydock execute "new | setlocal buftype=nofile bufhidden=hide noswapfile | r !pydoc -k <args><cr>"
" command! Pydocw execute "new | setlocal buftype=nofile bufhidden=hide noswapfile" | :r !pydoc <C-R><C-W>
" nmap  <Leader>pw :execute "new ^V| setlocal buftype=nofile bufhidden=hide noswapfile" ^V| :r !pydoc <C-R><C-W><CR> 
" nmap  <Leader>pk :execute "new ^V| setlocal buftype=nofile bufhidden=hide noswapfile" ^V| :r !pydoc -k <C-R><C-W><CR> 
command! -nargs=1 Pydoc call Pydoc(<q-args>, 0)
command! -nargs=1 VPydoc call Pydoc(<q-args>, 1)
nmap <Leader>pw :call Pydoc(expand("<cword>"), 0)<cr>

let pydocpath='/usr/share/doc/python2.7/html/_sources'
command! -nargs=1 Pygrep execute "G -i <args> " . pydocpath . ' '  | :exe "match WarningMsg '<args>'"
command! -nargs=1 Pyfind execute "new | setlocal buftype=nofile bufhidden=hide noswapfile | r !find " . pydocpath . " -type f | grep <args>" | :exe "match WarningMsg '<args>'" 

command! -nargs=1 Man call Man(<q-args>, 0)
command! -nargs=1 VMan call Man(<q-args>, 1)
nmap <Leader>pw :call Man(expand("<cword>"), 0)<cr>



command! OpenInBrowser silent! execute "!firefox % &"
command! Nautilus silent! execute "!nautilus %:p:h &"

" apt-get install xvkbd
command! RefreshFirefox silent execute '!xvkbd -window Firefox -text "\Cr"'
command! RefreshChromium silent execute '!xvkbd -window Chromium -text "\Cr"'

command! -nargs=1 Curl execute "r !curl -s <args>"
command! -nargs=1 CurlVerbose execute "r !curl -s -v -D- -o- <args>"
command! E execute "browse e"
command! Eh execute "browse e %:h"
command! S execute "browse saveas"

command Q bwipeout
command! Synreset execute "syn off | syn on"
set fillchars=stl:.,vert:\ ,fold:\ ,diff:-

command! FThtml silent! execute "setlocal filetype=html"
command! FTjavascript silent! execute "setlocal filetype=javascript"
command! FTcss silent! execute "setlocal filetype=css"
command! FThtmldjango silent! execute "setlocal filetype=htmldjango"
command! FTdjango silent! execute "setlocal filetype=django"
command! FTpython silent! execute "setlocal filetype=python"
command! FTperl silent! execute "setlocal filetype=perl"
command! FTphp silent! execute "setlocal filetype=php"
command! FTvim silent! execute "setlocal filetype=vim"
command! FTsql silent! execute "setlocal filetype=sql"
command! FTtxt silent! execute "setlocal filetype=txt"
command! FTjson silent! execute "setlocal filetype=json"
command! FTsh silent! execute "setlocal filetype=sh"
command! FTzsh silent! execute "setlocal filetype=zsh"

" Add the virtualenv's site-packages to vim path
" http://www.sontek.net/blog/detail/python-with-a-modular-ide-vim
python << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" gf works on python import statements
python << EOF
import os
import sys
import vim
for p in sys.path:
    if os.path.isdir(p):
        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF

" django template mappings
imap ÷ {{
imap × }}
imap ß {%
imap ¤ %}

" clear the search buffer when hitting return
" nnoremap <CR> :nohlsearch<cr>
"

" set tags=~/myvimtagss

" let * to find but not to jump, numerical * jumps anyway :)
" nnoremap * *``
nnoremap + *``
nnoremap g+ /\C\<\><cr>
vnoremap g+ <Esc>/\C*<cr>
command! -nargs=1 SearchKeyword execute "/\\C\\<<args>\\>"
nmap <Space> /\C



nmap ć iw
xmap ć iw
nmap ž viw

set number

" let python_highlight_all = 1
" let g:python_no_builtin_highlight = 1
" let python_space_error_highlight = 1

nnoremap <S-Home> ^

set winaltkeys=no
" set foldlevelstart=3
" set foldlevel=3
"reverse lines
command! -range=% Reverse <line1>,<line2>g/^/m<line1>-1 
"alternative reverselines
"command -range=% !tac


" highlight dott ctermfg=magenta guifg=magenta gui=bold
" call matchadd('dott', '\.')

command! -range WhiteSpaceRemove <line1>,<line2>s/\s\+$//

" fun! RangerChooser()
"     exec "silent !xfce4-terminal -e ranger --choosefile=/tmp/chosenfile " . expand("%:p:h")
"     if filereadable('/tmp/chosenfile')
"         exec 'edit ' . system('cat /tmp/chosenfile')
"         call system('rm /tmp/chosenfile')
"     endif
"     redraw!
" endfun
" map ,r :call RangerChooser()<CR>

map <M-1> :tabfirst<cr>
map <M-9> :tablast<cr>
map <M-2> 2gt
map <M-3> 3gt
map <M-4> 4gt
map <M-5> 5gt
map <M-6> 6gt
map <M-7> 7gt
map <M-8> 8gt

" rope
" rope sucks
" so /home/vsajko/.virtualenvs/24dc/share/vim/plugin/ropevim.vim
" 
" 
:command! Diffoffall diffoff! \| windo set nowrap \| windo set noscrollbind \| windo set nocursorbind<Cr>

set cursorline
" set cursorcolumn
" autocmd InsertEnter * set nocursorline
" autocmd InsertLeave * set cursorline
" autocmd InsertEnter * set nocursorcolumn
" autocmd InsertLeave * set cursorcolumn

function! ToggleLine()
    set cursorline!
    set cursorcolumn!
endfunction

nmap <silent> <leader>- :call ToggleLine()<cr>

inoremap <c-x><Char-46> :set iskeyword+=.<cr>a<c-n>
inoremap <c-x><Char-45> :set iskeyword+=-<cr>a<c-n>
autocmd CompleteDone * set iskeyword-=.
autocmd CompleteDone * set iskeyword-=-
imap <C-_> </<C-x><C-o><BS>

" python << EOF
" import os.path
" import sys
" import vim
" sys.path.extend(
" [
"  '/home/vsajko/a1000_python/usr/lib64/python26.zip',
"  '/home/vsajko/a1000_python/usr/lib64/python2.6',
"  '/home/vsajko/a1000_python/usr/lib64/python2.6/plat-linux2',
"  '/home/vsajko/a1000_python/usr/lib64/python2.6/lib-tk',
"  '/home/vsajko/a1000_python/usr/lib64/python2.6/lib-old',
"  '/home/vsajko/a1000_python/usr/lib64/python2.6/lib-dynload',
"  '/home/vsajko/a1000_python/usr/lib64/python2.6/site-packages',
"  '/home/vsajko/a1000_python/usr/lib/python2.6/site-packages',
"  '/home/vsajko/a1000_python/usr/lib/python2.6/site-packages/setuptools-0.6c11-py2.6.egg-info',
"  '/home/vsajko/a1000_python/usr/lib/python2.6/site-packages/IPython/extensions'
"  ]
" )
" EOF

" close quickfix windows
nnoremap <silent><C-q> :execute"cclose\|lclose"<CR> 

" equilise windows in tabs
command Eqtabs tabdo execute "normal \<C-W>="
" equilise windows in tabs
command WinNoFix windo set nowinfixheight | set nowinfixwidth 

set colorcolumn=80,100,120

command! Cololight set background=light
command! Colodark set background=dark


" select last paste in visual mode
" http://dalibornasevic.com/posts/43-12-vim-tips
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'
" nmap <C-p> :pwd<cr>
command! Cdb cd %:h

""""""""""""""""""""""""""""""""""""""""""""""""""""
"source ~/.vim/myminiplugs/qflistmanipulation.vim
" source ~/.vim/myminiplugs/vcd.vim
source ~/.vim/pluginsrc.vim
source ~/.vim/myfunctions.vim
source ~/.vim/myminiplugs/statusline.vim
source ~/.vim/myminiplugs/toolkitgrep.vim
source ~/.vim/myminiplugs/myminigrep.vim
source ~/.vim/myminiplugs/indentmove.vim
source ~/.vim/myminiplugs/prettydump.vim
source ~/.vim/myminiplugs/uuid.vim
source ~/.vim/myminiplugs/splitjoin.vim
source ~/.vim/myminiplugs/keywordreplace.vim
source ~/.vim/myminiplugs/inactivity.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/Private/.dotfiles_private/dots/.vim_private/privaterc.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""
" so ~/.vim/myminiplugs/damien_conway.vim
" so ~/.vim/myminiplugs/24dctags.vim
