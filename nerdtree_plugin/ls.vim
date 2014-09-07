call NERDTreeAddKeyMap({
			\ 'key': 'l',
			\ 'callback': 'NERDTreeLsCurrentNode',
			\ 'quickhelpText': 'ls full path of current node' })

function! NERDTreeLsCurrentNode()
	let n = g:NERDTreeFileNode.GetSelected()
	if n != {}
		if( isdirectory(n.path.str()) )
			exe ":!ls -lphrt " . n.path.str()
		else
			echomsg n.path.str() . '  ' . getfperm(n.path.str()) . ' ' . getfsize(n.path.str()) . 'b ' . strftime("%F %T",getftime(n.path.str()))
		endif

	endif
endfunction

