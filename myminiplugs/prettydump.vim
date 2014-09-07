"Vim global plugin that provides pretty printing of vim's dictionaries and
"lists"
"Last Change: 2010 07 19"
"Maintainer : Vedran Sajko <vsajko@gmail.com>
"License: This file is placed in the public domain."
"
"  :function! Mylen() dict
"  :   return len(self.data)
"  :endfunction
"  :let mydict = {'data': [0, 1, 2, 3], 'len': function("Mylen")}
"  :echo mydict.len()

"		Usage
"		By command
"		:PrettyDump g:varname
"		:PrettyDump b:buffervarname
"		you must use 'g:' for globals
"
"		or by callin function
"		echo PrettyDump(varname)
"		let @g = PrettyDump(varname)
"		
"
"
"

"let forpretty=[{'df': 'rt'},mydict, 1,2,3,{"a": "fg",'l': [4, 5, 6] ,"we": "wer", 'd': {'a': 'aa', 'b': 'bb', 'c': 'cc' }},['t','z'],18 ]

if exists("PrettyDump")
	finish
endif

let PrettyDump = 1

function! PrettyJson(var )
	redir @d>
	silent echo a:var
	redir END
	let @d=substitute(@d,"'",'"','g')
	exe "Scratch"
	normal "dp
	normal gg
	normal V
	normal G
	exe "normal %!json_xs -f json -t json-pretty"
endfunction

function! PrettyDump(var)
	let l:ret = s:PrettyWork(a:var)
	let l:ret = substitute( l:ret, ',\s*\n$','','')
	return l:ret
endfunction

function! s:ComPrettyDump(var)
	let l:ret = s:PrettyWork(eval(a:var))
	let l:ret = substitute( l:ret, ',\s*\n$','','')
  :new | setlocal buftype=nofile bufhidden=hide noswapfile | normal <C-W><S-J>
	
	let failed = append(1,split( l:ret, "\n"))
endfunction

command! -nargs=1 -complete=var PrettyDump :call <SID>ComPrettyDump(<f-args>)

function! s:WithLev( str, var, ... )
	if exists("a:1")
		let l:lev = a:1
	else
		let l:lev = 0
	endif

	let l:str = a:str
	if type(a:var ) == type("")
		let l:str .= repeat("\t", l:lev) . "'" . a:var . "',\n"
	elseif type(a:var ) == type(0)
		let l:str .= repeat("\t", l:lev) . a:var . ",\n"
	elseif type(a:var ) == type(0.0)
		let l:str .= repeat("\t", l:lev) . string(a:var) . ",\n"
	elseif type(a:var ) == 2 "function
		let l:str .= repeat("\t", l:lev) . string(a:var) . ",\n"
	endif
	return l:str

endfunction

function! s:PrettyWork(var, ... )

	let l:n = 0 
	if exists("a:1")
		let l:lev = a:1['lev']
	else
		let l:lev = 0
	endif

	let l:str = ''


	if type(a:var) == type({})
		if exists( 'a:1' ) && strlen( matchstr( get( a:1, 'prev'), "':\\s*$" ) ) 
			let l:str .= "{" . "\n"
		else
			let l:str .= repeat("\t", l:lev) ."{" . "\n"
		endif
		if len(a:var)
			let l:lev += 1
		endif
		for l:key in keys(a:var)
			let l:str .= repeat("\t", l:lev) . "'" .l:key . "': "

			if type(a:var[l:key]) == type({}) || type(a:var[l:key]) == type([])
				let l:str .= s:PrettyWork(a:var[l:key], {'lev': l:lev , 'prev': l:str } )
			else
				let l:str = s:WithLev( l:str, a:var[l:key] )
			endif
			unlet l:key
		endfor
		let l:str = substitute( l:str, ',\_s*$','','')
		let l:lev -= 1
		let l:str .= "\n" . repeat("\t", l:lev) . "},\n"
	elseif type(a:var) == type([])
		if exists( 'a:1' ) && strlen( matchstr( get( a:1, 'prev'), "':\\s*$" ) ) 
			let l:str .= "[" . "\n"
		else
			let l:str .= repeat("\t", l:lev) ."[" . "\n"
		endif
		if len(a:var)
			let l:lev += 1
		endif
		for l:val in a:var
			if type(l:val) == type({}) || type(l:val) == type([])
				let l:str .=  s:PrettyWork(l:val, {'lev': l:lev, 'prev': l:str } )
			else
				let l:str = s:WithLev( l:str, l:val, l:lev )
			endif
			unlet l:val
		endfor
		let l:str = substitute( l:str, ',\_s*$','','')
		let l:lev -= 1
		let l:str .= "\n". repeat("\t", l:lev) ."],\n"
	else
		let l:str = s:WithLev( l:str, a:var )
	endif
	return l:str


endfunction

