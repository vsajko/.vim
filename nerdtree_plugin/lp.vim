call NERDTreeAddKeyMap({
			\ 'key': 'h',
			\ 'callback': 'NERDTreePrintCurrentNode',
			\ 'quickhelpText': 'print to scratch full path of current node' })

function! NERDTreePrintCurrentNode()
	let n = g:NERDTreeFileNode.GetSelected()
	if n != {}
"    if( isdirectory(n.path.str()) )
			let oldr= @r
			redir @r>
			silent exe ":!ls -laphrt " . n.path.str()
			redir END
			exe ":Scratch"
			put r
			let @r= oldr
"    else
"    echomsg n.path.str() . '  ' . getfperm(n.path.str()) . ' ' . getfsize(n.path.str()) . 'b ' . strftime("%F %T",getftime(n.path.str()))
"  end

	endif
endfunction

