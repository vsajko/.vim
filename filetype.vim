"au BufNewFile,BufRead *.tt2
"        \ if ( getline(1) . getline(2) . getline(3) =~ '<\chtml'
"        \           && getline(1) . getline(2) . getline(3) !~ '<[%?]' )
"        \   || getline(1) =~ '<!DOCTYPE HTML' |
"        \   setf tt2html |
"        \ else |
"        \   setf tt2 |
"        \ endif 

"au BufNewFile,BufRead *.tt2,*.tt setf php
au BufNewFile,BufRead *.tt2,*.tt setf html
au BufNewFile,BufRead *.vm setf velocity
au BufNewFile,BufRead *.vm setlocal commentstring=##%s
au BufNewFile,BufRead *.hx setf haxe
au BufNewFile,BufRead *.as setf actionscript
au BufNewFile,BufRead *.as setf imacros

au BufRead,BufNewFile *.todo setfiletype todo
"au BufNewFile,BufRead *.sql			setf mysql

au BufRead,BufNewFile *.module setfiletype php
au BufRead,BufNewFile *.engine setfiletype php
au BufRead,BufNewFile *.engine setfiletype php

au BufRead,BufNewFile /etc/httpd/*.conf* setfiletype apache
au BufRead,BufNewFile *.conf* setfiletype apachestyle
au BufRead,BufNewFile *.json setfiletype json 
" au BufRead,BufNewFile /home/www/** set fenc=latin2
" au BufRead,BufNewFile /home/devel/** 
"             \ if( &modifiable == 1 ) | 
"             \ set fenc=latin2 | 
"             \ endif 

" au BufRead,BufNewFile /home/vsajko/latin2code/**
"             \ if( &modifiable == 1 ) | 
"             \ set fenc=latin2 | 
"             \ endif 

au BufRead,BufNewFile *.tmpl setfiletype html

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org            call org#SetOrgFileType()

au BufRead,BufNewFile,BufEnter *.scala setfiletype scala

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org call org#SetOrgFileType()

augroup filetypedetect
au BufRead,BufNewFile /usr/share/doc/python2.7/html/_sources/** setfiletype rst

au BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  setf markdown
au BufNewFile,BufRead rfc*.txt  setf rfc
au! BufNewFile,BufRead *.txt,*.text
au BufNewFile,BufRead *.txt,*.text		setf text

autocmd BufNewFile,BufRead .Xresources setfiletype xresources
augroup END
