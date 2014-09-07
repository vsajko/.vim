"Vim global plugin that provides directory hotlist function"
"Last Change: 2010 01 21"
"Maintainer : Vedran Sajko <vsajko@gmail.com>
"License: This file is placed in the public domain."
"Depends on FuzzyFinder by Takeshi NISHIDA http://www.vim.org/scripts/script.php?script_id=1984
"
"2010-01-21T00:39:36	removed tlib dependency
" 										fuf used for chosing dirs 

if exists("vdirhotlist")
	finish
endif

"global that keeps list of directories
let vdirhotlist=[ getcwd() ]
"let vdirhotlist=[ getcwd(),  expand($HOME)]

"function that change dir and fill vdirhotlist removing duplicates
"fu! Vcd(arg)
function! Vcd(arg)
	let ndir = expand(a:arg)
	if (ndir == '')
		let ndir = expand('~')
	end

	if (isdirectory(ndir))
"    exe "windo cd  ". ndir
		exe "cd  ". fnameescape(ndir)
	end
	call UpdateVdirhotlist()
endfu

function! MyTitlestring()
	return (v:servername !="" ? v:servername . " - ": "" ) . "VIM :: " . $USER . "@" . hostname() .  "  ::  " . getcwd()
endfu


function! UpdateVdirhotlist()
		set titlestring=%{MyTitlestring()}
		let ndir = getcwd()
		let ind = index(g:vdirhotlist, ndir)
		if (ind != -1)
			:unlet g:vdirhotlist[ind]
		end
		call insert(g:vdirhotlist , ndir)
		echo ndir

endfu

"displays list of directories using fuf's List and changes to seleced dir
function! Vdirhotlist()
	call UpdateVdirhotlist()
"  givendir changes directory
	call fuf#givendir#launch('', 0, '>', g:vdirhotlist )
	call UpdateVdirhotlist()
endfu


"Mapping , abbreviations
exe "com! -nargs=? -complete=dir Cd call Vcd('<args>')"
exe "com! Cdc call Vcd('%:h')"
"abbreviation by http://vim.wikia.com/wiki/Replace_a_builtin_command_using_cabbrev
:cabbrev cd <C-R>=(getcmdtype()==':' && getcmdpos()==1 ? 'Cd' : 'cd')<CR>
:cabbrev cdc <C-R>=(getcmdtype()==':' && getcmdpos()==1 ? 'Cdc' : 'cdc')<CR>
"this don't work any more and is disabled on 2013-09-18


":cabbrev cd Vcd 
":cabbrev cdc Vcdc 
exe "map <F2> :call Vdirhotlist()<CR>"

