
let g:showperlpack=1
":set statusline=%<%f%h%m%r%=\ enc:%{&encoding}\ fenc:%{&fileencoding}\ \bom:%{&bomb}\ [%l,%c%V]\ %P%([%{Tlist_Get_Tagname_By_Line()}]%)
":set statusline=%<%F%h%m%r%=\ enc:%{&encoding}\ fenc:%{&fileencoding}\ \bom:%{&bomb}\ [%l,%c%V]\ %P%([%{Tlist_Get_Tagname_By_Line()}]%)
":set statusline=%{StatusIsCurrentDir()}%<%f%h%m%r%=\ enc:%{&encoding}\ fenc:%{&fileencoding}\ \bom:%{&bomb}\ [%l,%c%V]\ %P%([%{Tlist_Get_Tagname_By_Line()}]%)

":set statusline=%{winbufnr('.')}\ %{StatusIsCurrentDir()}%<%f%h%m%r%=\ %{&encoding}\/%{&fileencoding}\ %{Isbom()}\ [%l,%c%V]\ %P\ %([%{Trazi('package','sub')}]%)
":set statusline=%{winbufnr('.')}\ %{StatusIsCurrentDir()}%<%f%h%m%r%w%n%=\ %{ShowEnc()}\ %{Isbom()}\ [%l,%c%V]\ %P\ %([%{Trazi('package','sub')}]%)
":set statusline=%n\ %{LcdEd()}%{StatusIsCurrentDir()}%<%f%h%m%r%w%=\ %{ShowEnc()}\ %{Isbom()}\ [%l,%c%V]\ %P\ %([%{Trazi('package','sub')}]%)
":set statusline=%n\ %{LcdEd()}%{StatusIsCurrentDir()}%{IsLinked()}%<%f%h%m%r%w%=\ %{ShowEnc()}\ %{Isbom()}\ [%l,%c%V]\ %P\ %([%{Trazi('package','sub')}]%)
" :set statusline=%n\ %{LcdEd()}%{StatusIsCurrentDir()}%{IsLinked()}%<%f%h%m%r%w%=\ %{ShowEnc()}\ %{Isbom()}\ [%l,%c%V]\ %P\ %([%{TraziPerl('package','sub')}]%)
" :set statusline=%n\ %{LcdEd()}%{StatusIsCurrentDir()}%{IsLinked()}%<%f%h%m%r%w%=\ %{ShowEnc()}\ %{Isbom()}\ [%l,%c%V]\ %P\ %(<%{tagbar#currenttag('%s','','f')}>%)
" :set statusline=%n\ %{LcdEd()}%{StatusIsCurrentDir()}%{IsLinked()}%<%f%h%m%r%w%=\ %{ShowEnc()}\ %{Isbom()}\ [%l,%c%V]\ %P\ %(<%{tagbar#currenttag('%s','','p')}>%)
" :set statusline=%n\ %{LcdEd()}%{StatusIsCurrentDir()}%{IsLinked()}%<%f%h%m%r%w%=\ %{tagbar#currenttag('•%s•','','s')}\ %{ShowEnc()}\ %{Isbom()}\ [%l,%c%V]\ %P
" :set statusline=%n\ %{LcdEd()}%{StatusIsCurrentDir()}%{IsLinked()}%<%f%h%m%r%w\ %{tagbar#currenttag('->\ %s','','s')}\ %=\ %{ShowEnc()}\ %{Isbom()}\ [%l,%c%V]\ %P
" :set statusline=%n\ %{LcdEd()}%{StatusIsCurrentDir()}%{IsLinked()}%<%f%h%m%r%w\ %#WarningMsg#\%{tagbar#currenttag('\ %s\ ','','s')}%*\ %=\ %{ShowEnc()}\ %{Isbom()}\ %#PmenuSel#[%l,%c%V]\ %P%*
" :set statusline=%n\ %{LcdEd()}%{StatusIsCurrentDir()}%{IsLinked()}%<%f%h%m%r%w\ %#WarningMsg#\%{tagbar#currenttag('\ %s\ ','','s')}%*\ %=\ %{ShowEnc()}\ %{Isbom()}\ %#PmenuSel#[%l,%c%V]\ %#SpecialKey#%P%*
" :set statusline=%n\ %{LcdEd()}%{StatusIsCurrentDir()}%{IsLinked()}%<%f%h%m%r%w\ %#WarningMsg#\%{tagbar#currenttag('\ %s\ ','','s')}%*\ %=\ %{ShowEnc()}\ %{Isbom()}\ %#SpecialKey#\ %l,%c%V\ %#PmenuSel#%P%*
" :set statusline=%n\ %{LcdEd()}%{StatusIsCurrentDir()}%{IsLinked()}%<%f%h%m%r%w\ %#WarningMsg#\%{tagbar#currenttag('\ %s\ ','','s')}%*\ %=\ %{ShowEnc()}\ %{Isbom()}\ %#SpecialKey#\ %l,%c%V\ %#Todo#%P%*

" buffernumber
set statusline=
set statusline+=%#StatuLineStrong#
set statusline+=b%n
set statusline+=%*

set statusline+=\ %{LcdEd()}
set statusline+=%{StatusIsCurrentDir()}
set statusline+=%{IsLinked()}
set statusline+=%<%f%h%m%r%w
set statusline+=\ %#StatuLineStrong2#
set statusline+=\%{tagbar#currenttag('\ %s\ ','','f')}
" clear highlight
set statusline+=%*
" right align
set statusline+=\ %=
set statusline+=\ %{ShowEnc()}
set statusline+=\ %{Isbom()}
set statusline+=\ %#StatuLineStrong#
set statusline+=\ %#special#
set statusline+=\ %l
set statusline+=%*
set statusline+=\,%c%V
" set statusline+=\ %l,%c%V
" set statusline+=\ %#StatuLineStrong#
set statusline+=\ %#constant#
set statusline+=%P
set statusline+=%*
" :set statusline=%n\ %{LcdEd()}%{StatusIsCurrentDir()}%{IsLinked()}%#StatuLineStrong#%<%f%h%m%r%w\ %#WarningMsg#\%{tagbar#currenttag('\ %s\ ','','s')}%*\ %=\ %{ShowEnc()}\ %{Isbom()}\ %#SpecialKey#\ %l,%c%V\ %#StatuLineStrong#%P%*

"za syntastic statusline flag
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"
"za fugitive
" set statusline+=\ %{fugitive#statusline()}


":set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
":hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red
"set fileencodings=ucs-bom,utf-8,default,cp1250,latin2,latin1
set fileencodings=ucs-bom,utf-8,latin2
function! ShowEnc()
	let ret=''
	if (&encoding != 'utf-8')
		let ret = ret . &encoding . ':'
	endif
	if (&fileencoding != 'utf-8')
		let ret = ret . ':' . &fileencoding
	endif
	return ret
endfunction

"set statusline=\t%{StatusIsCurrentDir()}\ %P
function! Isbom()
	if &bomb
		return 'bom'
	else
		return ''
	endif
endfunction

function! LcdEd()
	if haslocaldir()
		return '[L]'
	else
		return ''
	endif
endfunction


function! StatusIsCurrentDir()
	if getcwd() == expand("%:p:h")
		return '[C]'
	else
		return ''
	endif
endfunction

function! TraziPerl(pack, sub)
	let nadjeno = ''
	if ( &filetype == 'perl' && g:showperlpack )
		let nasop = search('^\s*\<' . a:pack  .'\>', 'nbW')
		if (nasop)
"      let nadjeno = nadjeno . substitute(getline(nasop), '^\s*' . a:pack . '\s\+\(\i\|::\+\).*','\1',"")
			let nadjeno = nadjeno . substitute(getline(nasop), '^\s*' . a:pack . '\s\+\(\(\i\|::\)\+\).*','\1',"")
		else
			let nadjeno = 'main'
		endif

		let nasos = search('^\s*\<' . a:sub . '\>\s', 'nbW')
		if (nasos)
"      let nadjeno = nadjeno . '::' . substitute(getline(nasos), '^\s*' . a:sub . '\s\+\(\i\+\).*','\1',"")
			let nadjeno = nadjeno . '->' . substitute(getline(nasos), '^\s*' . a:sub . '\s\+\(\(\i\|::\)\+\).*','\1',"")
		endif
	endif
	return nadjeno
endfunction

function! TraziPython()
	let nadjeno = ''
	if ( &filetype == 'python' )
		let nasop = search('^\s*\<' . 'def'  .'\>', 'nbW')
		if (nasop)
			let nadjeno = nadjeno . substitute(getline(nasop), '^\s*' . 'def' . '\s\+\(\(\i\|::\)\+\).*','\1',"")
		endif

	endif
	return nadjeno
endfunction

function! IsLinked() 
    let bufnumber = bufnr("%")
    let buffername = bufname('%')
    if buffername != '' && &buftype == ''
        let buffernamefull = fnamemodify( buffername, ':p' )
        let resolvedbufname = resolve( buffernamefull )
        if buffernamefull != resolvedbufname 
            return '[S]'
        else
            return ''
        endif
    endif
endfunction


":auto BufEnter * let &titlestring = $USER . "@" . hostname() . "   /" . expand("%:p") ."/  ". expand("%:t") . " - " . (v:servername !="" ? v:servername : "" )
":auto BufEnter * let &titlestring = $USER . "@" . hostname() . expand("%:p") ."/  ". expand("%:t") . " - " . (v:servername !="" ? v:servername : "" )
":auto BufEnter * let &titlestring = $USER . "@" . hostname() . expand("%:h") ."/  ". expand("%:t") . " - " . (v:servername !="" ? v:servername : "" )
":auto BufEnter * let &titlestring = $USER . "@" . hostname() . getcwd() ."/  ". expand("%:t") . " - " . (v:servername !="" ? v:servername : "" )
":auto BufEnter * let &titlestring = (v:servername !="" ? v:servername . " - ": "" ). $USER . "@" . hostname() . getcwd() ."/  ". expand("%:t")
":auto BufEnter * let &titlestring = (v:servername !="" ? v:servername . " - ": "" ) . $USER . " [ " . expand("%:t") . " ] " . getcwd() 
":auto BufEnter * let &titlestring = (v:servername !="" ? v:servername . " - ": "" ) . $USER . "@" . hostname() .  " [ " . expand("%:t") . " ] " . getcwd() 
":auto BufEnter * let &titlestring = (v:servername !="" ? v:servername . " - ": "" ) . "VIM :: " . $USER . "@" . hostname() .  "  ::  " . getcwd() . "  ::  " . expand("%")   
":auto BufEnter * let &titlestring = (v:servername !="" ? v:servername . " - ": "" ) . "VIM :: " . $USER . "@" . hostname() .  "  ::  " . getcwd() 
":auto BufEnter * let &titlestring = bufname("%") . " " . " - " . getcwd() . " " . (v:servername !="" ? v:servername . " ": " " ) . $USER
:auto BufEnter * let &titlestring = '(' . fnamemodify(v:this_session, ":t") .')' .  " " . expand("%:t") . " " . " * " . getcwd() . " * " . (v:servername !="" ? v:servername . " ": " " ) . $USER . '(' . fnamemodify($VIRTUAL_ENV, ":t") . ')' . ' ' . fugitive#statusline()

