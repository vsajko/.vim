"set grepprg=ack\ -a\ -H\ --nocolor\ --nogroup
"set grepprg=find\ .\ -exec\ grep\ -n\ $*\ /dev/null\ '{}'\ \\;
"set grepprg=find\ .\ -path\ '*/.svn'\ -prune\ -o\ -type\ f\ -exec\ grep\ -n\ $*\ /dev/null\ '{}'\ \\;
"set grepprg=find\ .\ -path\ '*/.svn'\ -prune\ -o\ -type\ f\ -exec\ grep\ -o\ -n\ '.\\{0,20\\}'$*'.\\{0,20\\}'\ /dev/null\ '{}'\ \\;
"set grepprg=find\ .\ -path\ '*/.svn'\ -prune\ -o\ -type\ f\ -exec\ mingrep\ -n\ $*\ /dev/null\ '{}'\ \\;
"set grepprg=grep\ -rvnH\ '.\\{400,\\}'\ .\ \\\|\ grep\ $*
"set grepprg=grep\ -rnH\ $*\ .\\\|\ grep\ -v\ '.\\{300,\\}'
" set grepprg=grep\ -Is\ --exclude-dir\ .svn\ --exclude-dir=.hg\ --exclude-dir=.git\ --exclude=.vimtags\ --color=auto\ -rnH\ $*\ .\\\|\ grep\ -v\ '.\\{300,\\}'
" set grepprg=grep\ -Is\ --exclude-dir\ .svn\ --exclude-dir=.hg\ --exclude-dir=.git\ --exclude=.vimtags\ --color=auto\ -rnH\ $*
"set grepprg=toolkitfind.pl\ -grepnoutput\ \ $*\ \|\ :copen
"set grepprg=find\ .\ -path\ '*/.svn'\ -prune\ -o\ -type\ f\ -print0\ \|\ xargs\ -0\ grep\ -n\ $*\ /dev/null
"set grepprg=find\ .\ -exec\ grep\ -n\ $*\ '{}'\ \\;
" set grepprg=grep\ -Is\ --exclude-dir\ .svn\ --exclude-dir=.hg\ --exclude-dir=.git\ --exclude=.vimtags\ --color=auto\ -rnH\ $*\ \\\|\ grep\ -v\ '.\\{300,\\}'
" set grepprg=grep\ -Is\ --exclude-dir\ .svn\ --exclude-dir=.hg\ --exclude-dir=.git\ --exclude=.vimtags\ --color=auto\ -rnH\ $*
let s:exclude=" --exclude-dir=.svn"
let s:exclude.=" --exclude-dir=.hg"
let s:exclude.=" --exclude-dir=.git"
let s:exclude.=" --exclude-dir=log    "
let s:exclude.=" --exclude=.vimtags"
let s:exclude.=" --exclude=tags"
let s:options=" -IsrnH"
let s:ridoflongerthan='300'
let s:dellonglines="\\| grep -v '.\\{" . s:ridoflongerthan . ",\\}'"
let s:dellonglines1="\\| grep -v '.\\{" . s:ridoflongerthan . ",\\}'"

function! FindGrep(pattern, ...)
    let prune=' -path "*/.svn" -prune -o '
    let prune.=' -path "*/.git" -prune -o '
    let prune.=' -path "*/.git" -prune -o '
    let prune.=' -path "*.pyc" -prune -o '
    " let prune = ''
    " for s in a:000
    "     echo s
    " endfor
    " echo a:pattern
    if a:0 == 1
        let &grepprg='find . ' . prune . ' -type f -print \| grep '  . a:1 . ' \| xargs grep -IsnH $* ' . s:dellonglines
    elseif a:0 == 2
        let &grepprg='find . ' . prune . ' -type f -name "'. a:2 .'" -print \| grep "'  . a:1 . '" \| xargs grep -IsnH $* ' . s:dellonglines
    else
        let &grepprg='grep ' . s:options . s:exclude . ' $* ' . s:dellonglines
    endif
    execute "silent! lgrep " . a:pattern
    botright lopen
    " exec "match WarningMsg '" . a:args . "'"
    exec "redraw!"

endfunction
           

function! Mygrep(args)
    let &grepprg='grep ' . s:options . s:exclude . ' $* ' . s:dellonglines
    execute "silent! lgrep " . a:args
    botright lopen
    " exec "match WarningMsg '" . a:args . "'"
    exec "redraw!"
endfunction

function! Mygrepi(args)
    let &grepprg='grep ' . s:options . s:exclude . ' $* ' . s:dellonglines
    execute "silent! lgrep -i " . a:args
    botright lopen
    " exec "match WarningMsg '" . a:args . "'"
    exec "redraw!"
endfunction

command! -nargs=* -complete=file G call Mygrep(<q-args>)
command! -nargs=* -complete=file Gi call Mygrepi(<q-args>)
command! -nargs=* -complete=file Gf call FindGrep(<f-args>)

" nnoremap <c-s> :G<Space>
" cnoremap <c-s> G<Space>

