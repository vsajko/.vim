function! MyBalloonExpr()
    return 'Cursor is at line ' . v:beval_lnum .
                \', column ' . v:beval_col .
                \ ' of file ' .  bufname(v:beval_bufnr) .
                \ ' on word "' . v:beval_text . '"'
endfunction
set bexpr=MyBalloonExpr()
set ballooneval

