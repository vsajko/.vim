set nocompatible
set runtimepath+=~/.vim/neobundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/neobundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'
let g:make = 'make'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" NeoBundle 'https://github.com/vim-scripts/F6_Comment.git'
" NeoBundle 'https://github.com/rhysd/clever-f.vim.git'

NeoBundle 'http://conque.googlecode.com/svn/trunk', {'name': 'conque'}
NeoBundle 'https://bitbucket.org/abudden/tagsignature'
NeoBundle 'https://bitbucket.org/ns9tks/vim-l9', {'name': 'l9'}
NeoBundle 'https://bitbucket.org/sjl/gundo.vim', {'name': 'gundo'}
NeoBundle 'https://github.com/AndrewRadev/inline_edit.vim.git'
NeoBundle 'https://github.com/AndrewRadev/linediff.vim.git'
NeoBundle 'https://github.com/AndrewRadev/sideways.vim.git'
NeoBundle 'https://github.com/AndrewRadev/splitjoin.vim.git'
NeoBundle 'https://github.com/AndrewRadev/writable_search.vim.git'
NeoBundle 'https://github.com/Chiel92/vim-autoformat.git', {'name': 'autoformat'}
NeoBundle 'https://github.com/JarrodCTaylor/vim-python-test-runner.git', {'name': 'python-test-runner'}
NeoBundle 'https://github.com/LStinson/TagmaTips.git'
NeoBundle 'https://github.com/Marslo/marslo.vim.git', {'name': 'colors-marslo'}
NeoBundle 'https://github.com/Pychimp/vim-luna.git', {'name': 'colors-luna'}
NeoBundle 'https://github.com/Pychimp/vim-sol.git', {'name': 'colors-sol'}
NeoBundle 'https://github.com/Shougo/context_filetype.vim.git'
NeoBundle 'https://github.com/Shougo/neomru.vim.git'
NeoBundle 'https://github.com/Shougo/unite-help.git'
NeoBundle 'https://github.com/Shougo/unite-outline.git'
NeoBundle 'https://github.com/Shougo/unite-session.git'
NeoBundle 'https://github.com/Shougo/unite-ssh.git'
NeoBundle 'https://github.com/Shougo/unite.vim.git', {'name': 'unite'}
NeoBundle 'https://github.com/Shougo/vimfiler.vim.git'
NeoBundle 'https://github.com/Shougo/vimproc.vim', {'name': 'vimproc', 'build': {'unix': g:make}}
NeoBundle 'https://github.com/Shougo/vimshell.vim.git'
NeoBundle 'https://github.com/SirVer/ultisnips.git'
NeoBundle 'https://github.com/Valloric/YouCompleteMe'
NeoBundle 'https://github.com/airblade/vim-rooter.git', {'name': 'rooter'}
NeoBundle 'https://github.com/aklt/plantuml-syntax.git'
NeoBundle 'https://github.com/alfredodeza/pytest.vim.git'
NeoBundle 'https://github.com/altercation/vim-colors-solarized.git', {'name': 'colors-solarized'}
NeoBundle 'https://github.com/ameade/qtpy-vim.git'
NeoBundle 'https://github.com/bps/vim-textobj-python.git', {'name': 'textobj-python'}
NeoBundle 'https://github.com/changyuheng/color-scheme-holokai-of-vim.git', {'name': 'colors-holokai'}
NeoBundle 'https://github.com/chrisbra/NrrwRgn.git'
NeoBundle 'https://github.com/chrisbra/csv.vim.git'
NeoBundle 'https://github.com/cocopon/iceberg.vim.git', {'name': 'colors-iceberg'}
NeoBundle 'https://github.com/derekwyatt/vim-scala.git', {'name': 'scala'}
NeoBundle 'https://github.com/elzr/vim-json.git', {'name': 'json'}
NeoBundle 'https://github.com/embear/vim-localvimrc.git', {'name': 'localvimrc'}
NeoBundle 'https://github.com/exu/pgsql.vim.git'
NeoBundle 'https://github.com/glts/vim-textobj-comment.git', {'name': 'textobj-comment'}
NeoBundle 'https://github.com/glts/vim-textobj-indblock.git', {'name': 'textobj-indblock'}
NeoBundle 'https://github.com/gregsexton/gitv.git'
NeoBundle 'https://github.com/greyblake/vim-preview.git', {'name': 'preview'}
NeoBundle 'https://github.com/heavenshell/vim-pydocstring.git', {'name': 'pydocstring'}
NeoBundle 'https://github.com/honza/vim-snippets.git', {'name': 'ultisnip-snippets'}
NeoBundle 'https://github.com/hynek/vim-python-pep8-indent.git', {'name': 'python-pep8-indent'}
NeoBundle 'https://github.com/idanarye/vim-merginal.git', {'name': 'merginal'}
NeoBundle 'https://github.com/int3/vim-extradite.git', {'name': 'extradite'}
NeoBundle 'https://github.com/jakobwesthoff/argumentrewrap.git'
NeoBundle 'https://github.com/jcorbin/vim-searchmatch.git', {'name': 'searchmatch'}
NeoBundle 'https://github.com/jeetsukumaran/vim-markology.git', {'name': 'markology'}
NeoBundle 'https://github.com/jlanzarotta/bufexplorer.git'
NeoBundle 'https://github.com/jmcantrell/vim-virtualenv.git', {'name': 'virtualenv'}
NeoBundle 'https://github.com/jonathanfilip/vim-lucius.git', {'name': 'colors-lucius'}
NeoBundle 'https://github.com/junegunn/vim-easy-align.git', {'name': 'easy-align'}
NeoBundle 'https://github.com/kana/vim-operator-user.git', {'name': 'operator-user'}
NeoBundle 'https://github.com/kana/vim-textobj-syntax.git', {'name': 'textobj-syntax'}
NeoBundle 'https://github.com/kana/vim-textobj-user.git', {'name': 'textobj-user'}
NeoBundle 'https://github.com/machakann/vim-patternjump.git', {'name': 'patternjump'}
NeoBundle 'https://github.com/majutsushi/tagbar'
NeoBundle 'https://github.com/mattn/emmet-vim.git'
NeoBundle 'https://github.com/mhinz/vim-signify.git', {'name': 'signify'}
NeoBundle 'https://github.com/michaeljsmith/vim-indent-object.git', {'name': 'indent-object'}
NeoBundle 'https://github.com/mileszs/ack.vim.git'
NeoBundle 'https://github.com/mjbrownie/swapit.git'
NeoBundle 'https://github.com/osyo-manga/unite-filetype.git'
NeoBundle 'https://github.com/osyo-manga/vim-textobj-multiblock.git', {'name': 'textobj-multiblock'}
NeoBundle 'https://github.com/reedes/vim-colors-pencil.git', {'name': 'colors-pencil'}
NeoBundle 'https://github.com/rhysd/vim-operator-surround.git', {'name': 'operator-surround'}
NeoBundle 'https://github.com/rhysd/vim-textobj-anyblock.git', {'name': 'textobj-anyblock'}
NeoBundle 'https://github.com/rhysd/vim-textobj-continuous-line.git', {'name': 'textobj-continuous-line'}
NeoBundle 'https://github.com/rking/ag.vim.git'
NeoBundle 'https://github.com/scrooloose/syntastic.git'
NeoBundle 'https://github.com/sjl/badwolf.git', {'name': 'colors-badwolf'}
NeoBundle 'https://github.com/sk1418/HowMuch.git'
NeoBundle 'https://github.com/sk1418/Join.git'
NeoBundle 'https://github.com/sk1418/QFGrep.git'
NeoBundle 'https://github.com/sk1418/last256.git', {'name': 'colors-last256'}
NeoBundle 'https://github.com/t9md/vim-choosewin.git', {'name': 'choosewin'}
NeoBundle 'https://github.com/t9md/vim-quickhl.git', {'name': 'quickhl'}
NeoBundle 'https://github.com/tacroe/unite-mark.git'
NeoBundle 'https://github.com/terryma/vim-expand-region.git', {'name': 'expand-region'}
NeoBundle 'https://github.com/terryma/vim-multiple-cursors.git', {'name': 'multiple-cursors'}
NeoBundle 'https://github.com/thinca/vim-qfreplace.git', {'name': 'qfreplace'}
NeoBundle 'https://github.com/thinca/vim-ref.git', {'name': 'ref'}
NeoBundle 'https://github.com/thinca/vim-textobj-between.git', {'name': 'textobj-between'}
NeoBundle 'https://github.com/timcharper/textile.vim.git'
NeoBundle 'https://github.com/tommcdo/vim-fugitive-blame-ext.git', {'name': 'fugitive-blame-ext'}
NeoBundle 'https://github.com/tpope/vim-commentary.git', {'name': 'commentary'}
NeoBundle 'https://github.com/tpope/vim-dispatch.git', {'name': 'dispatch'}
NeoBundle 'https://github.com/tpope/vim-fugitive', {'name': 'fugitive',  'augroup' : 'fugitive'}
NeoBundle 'https://github.com/tpope/vim-pathogen.git', {'name': 'pathogen'}
NeoBundle 'https://github.com/tpope/vim-repeat.git', {'name': 'repeat'}
NeoBundle 'https://github.com/tpope/vim-scriptease.git', {'name': 'scriptease'}
NeoBundle 'https://github.com/tpope/vim-speeddating.git', {'name': 'speeddating'}
NeoBundle 'https://github.com/tpope/vim-surround.git', {'name': 'surround'}
NeoBundle 'https://github.com/tsukkee/unite-tag.git'
NeoBundle 'https://github.com/ujihisa/unite-font.git'
NeoBundle 'https://github.com/vim-scripts/ColorSchemeEditor.git'
NeoBundle 'https://github.com/vim-scripts/Notes.git'
NeoBundle 'https://github.com/vim-scripts/SelectBuf.git'
NeoBundle 'https://github.com/vim-scripts/VimSpy.git'
NeoBundle 'https://github.com/vim-scripts/WhereFrom.git'
NeoBundle 'https://github.com/vim-scripts/closeb.git'
NeoBundle 'https://github.com/vim-scripts/genutils'
NeoBundle 'https://github.com/vim-scripts/listmaps.vim.git'
NeoBundle 'https://github.com/vim-scripts/marvim.git'
NeoBundle 'https://github.com/vim-scripts/pylint.vim.git'
NeoBundle 'https://github.com/vim-scripts/python.vim'
NeoBundle 'https://github.com/vim-scripts/rfc-syntax.git'
NeoBundle 'https://github.com/vim-scripts/showhide.vim.git'
NeoBundle 'https://github.com/vim-voom/VOoM.git', {'name': 'VOoM'}
NeoBundle 'https://github.com/voithos/vim-python-matchit.git', {'name': 'python-matchit'}
NeoBundle 'https://github.com/vsajko/Asciitable.vim.git'
NeoBundle 'https://github.com/vsajko/BlockDiff.git'
NeoBundle 'https://github.com/vsajko/sessionman.vim.git'
NeoBundle 'https://github.com/xolox/vim-misc.git', {'name': 'misc'}

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" nebundle end 

set nocompatible
" set runtimepath+=~/.vim_private/
" runtime bundle/pathogen/autoload/pathogen.vim
" call pathogen#infect()

set fileformats=unix,dos,mac
let mapleader=","
set background=dark 
if &t_Co==256 || &t_Co==88
    colorscheme xoria256transp
endif
syntax on
"set synmaxcol=333
filetype plugin on
filetype indent on

set hlsearch
set incsearch

"no bell at all
set visualbell t_vb=
set listchars=tab:¦\ ,trail:-,extends:~,precedes:~
set showbreak=««\ 
set display=lastline
set nolinebreak
set nowrap
set virtualedit=block

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

"allwas show status line
:set laststatus=2
set ignorecase
"set nostartofline
set lazyredraw

"scroll with shift arrows
nnoremap <S-Up> 3<C-Y>
nnoremap <S-Down> 3<C-E>

set mouse=a    
set mousehide		" Hide the mouse when typing text
"set mousemodel=popup_setpos

"set directory=~/tmp/vim//
set directory=
set noswapfile
"set backupdir=~/tmp/vim/
set backupdir=

set backupext=\.~
":au BufWritePre * let &backupext = substitute(expand('%:h'),'/','%','g') . '.' . strftime("%Y%m%d.%X.") . '~'
set nobackup
set nowritebackup

set undodir=~/tmp/vim//
set undofile

set wildmenu
set title

set complete=.,w,b,u,t,i,k

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
map <A-n> :%s/<C-r>///gn<Cr>

"ask before leaving changed buffer
set confirm

"jump to tag
"nmap <Leader>t <C-]>
" map <C-LeftMouse> :tjump <C-R><C-W><Cr>
" map <Leader>t :tjump <C-R><C-W><Cr>
inoremap <c-g> <c-x><c-]>


"put from 0 register to allow multiple putting
vnoremap p "0p
vnoremap P "0P
"perldoc
command! -nargs=1 Pd  silent new <args> | setlocal buftype=nofile bufhidden=hide noswapfile | exe "r !perldoc -T <args>" | normal gg
command! -nargs=1 Pdf silent new <args> | setlocal buftype=nofile bufhidden=hide noswapfile | exe "r !perldoc -T -f <args>" | normal gg
command! -nargs=1 Pdq silent new <args> | setlocal buftype=nofile bufhidden=hide noswapfile | exe "r !perldoc -T -q <args>" | normal gg
"make R to read output of command (r !<command>)
command! -nargs=* -complete=shellcmd R  new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>

command! -nargs=1 Find execute "new | setlocal buftype=nofile bufhidden=hide noswapfile | r !find . -path '*/.svn' -prune -o -type f | grep <args>" | :exe "match WarningMsg '<args>'" 
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
nnoremap * *``
nnoremap g+ /\C\<\><cr>
vnoremap g+ <Esc>/\C\<+\><cr>
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
"
so ~/.vim/pluginsrc.vim
so ~/.vim/myfunctions.vim
so ~/.vim/myminiplugs/statusline.vim
"so ~/.vim/myminiplugs/qflistmanipulation.vim
so ~/.vim/myminiplugs/toolkitgrep.vim
so ~/.vim/myminiplugs/myminigrep.vim
so ~/.vim/myminiplugs/indentmove.vim
so ~/.vim/myminiplugs/prettydump.vim
so ~/.vim/myminiplugs/vcd.vim
so ~/.vim/myminiplugs/uuid.vim
so ~/.vim/myminiplugs/splitjoin.vim
so ~/.vim/myminiplugs/keywordreplace.vim

" so ~/.vim/myminiplugs/damien_conway.vim
" so ~/.vim/myminiplugs/24dctags.vim
" runtime! macros/matchit.vim

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

"set cursorline
"set cursorcolumn
"" set cursorline
"autocmd InsertEnter * set nocursorline
"autocmd InsertLeave * set cursorline
"" set cursorcolumn
"autocmd InsertEnter * set nocursorcolumn
"autocmd InsertLeave * set cursorcolumn

function! ToggleLine()
    set cursorline!
    set cursorcolumn!
endfunction

nmap <silent> <leader>- :call ToggleLine()<cr>


