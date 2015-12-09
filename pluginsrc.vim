"netrw
"let g:loaded_netrw=1
"let g:loaded_netrwPlugin=0
let g:netrw_silent=1
let g:netrw_http_cmd= "w3m"
" let g:netrw_http_xcmd= "-source >"
let g:netrw_http_xcmd= "-dump >"
" let g:netrw_alto=
let g:netrw_list_hide='.*\.pyc$,^\.[a-z-A-Z0-9].*$'
" let g:netrw_browse_split=2
let g:netrw_liststyle=3
" map <F5> :Lexplore<Cr>
" map <S-F5> :Lexplore .<Cr>

"vimfiler
let g:vimfiler_as_default_explorer=1
map <F5> :VimFilerExplorer -status<Cr>
" map <S-F5> :VimFilerExplorer -find<cr>
map <S-F5> :VimFilerBufferDir -explorer -find -status -winwidth=50<cr>
map <F6> :VimFilerCurrentDir -explorer -status -winwidth=50<cr>
let g:vimfiler_ignore_pattern = '^\%(\..*\|.*\.pyc\|.*\~\)$'
let g:vimfiler_quick_look_command = 'scite'
let g:vimfiler_define_wrapper_commands=1
" Like Textmate icons.
" let g:vimfiler_tree_leaf_icon = ' '
" let g:vimfiler_tree_opened_icon = '▾'
" let g:vimfiler_tree_closed_icon = '▸'
" let g:vimfiler_file_icon = '|'
" let g:vimfiler_marked_file_icon = '*'

" let g:vimfiler_tree_leaf_icon = ' '
" let g:vimfiler_tree_opened_icon = '▾'
" let g:vimfiler_tree_closed_icon = '▸'
" let g:vimfiler_file_icon = '|'
" let g:vimfiler_marked_file_icon = '*'

" let g:vimfiler_safe_mode_by_default=0
call vimfiler#custom#profile('default', 'context', {
      \ 'safe' : 0,
      \ })
let g:vimfiler_tree_leaf_icon='│'
let g:vimfiler_tree_opened_icon=' '
let g:vimfiler_tree_indentation=2
" let g:vimfiler_directory_display_top=0

"easytree
" map <F5> :EasyTree<Cr>
" map <S-F5> :EasyTree %:h<Cr>
let g:easytree_ignore_files=['.easytree', '*.swp', '*.pyc']
let g:easytree_hijack_netrw=0

"nerdtree
" map <F5> :NERDTreeToggle<Cr>
" map <S-F5> :NERDTreeFind<Cr>
" cabbrev nt NERDTree
" cabbrev ntc NERDTree %:p:h
let NERDTreeChDirMode=0
let NERDTreeMouseMode=2
let NERDTreeHighlightCursorline=1
let NERDTreeMapUpdirKeepOpen='<Backspace>'
let NERDTreeIgnore=['\.pyc$', '\~$']


function! NerdLs(print)
    "let winnr= bufwinnr('%')
    let winnr= winnr()
"  let path= NERDTreeGetCurrentPath().strAbs()
    let path= g:NERDTreeDirNode.GetSelected().path.str({'format': 'Glob'})
    "let path= '/home'
    "call system( "!ls -laph " . path)
    exe "normal ". winnr . "W"
    if ( a:print )
        let oldr= @r
        redir @r>
        exe ":!ls -laphrt " . path
        redir END
        exe ":Scratch"
        put r
        let @r= oldr
    else
        exe ":!ls -laphrt " . path
    endif

    return path
endfunction

nmap <Leader>ls :call NerdLs(0)<Cr>
nmap <Leader>lp :call NerdLs(1)<Cr>






"marvim
let marvim_find_key = ',mr' " change find key from <F2> to 'space'
let marvim_store_key = ',ms'     " change store key from <F3> to 'ms'
"  let marvim_register = 'c'       " change used register from 'q' to 'c'
let marvim_prefix = 0           " disable default syntax based prefix

"tagbar
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1

let g:tagbar_type_perl = {
            \ 'kinds'     : [
            \ 'c:constants',
            \ 'l:labels',
            \ 'f:formats',
            \ 'u:use:1',
            \ 'p:package:1',
            \ 'r:role',
            \ 'a:attribute',
            \ 'e:extends',
            \ 's:subroutines',
            \ 'v:variables:1'
            \ ]
            \ }

" let g:tagbar_type_javascript = {
"             \ 'kinds'     : [
"             \ 'o:objects:1',
"             \ 'f:functions:1',
"             \ 'a:array:1',
"             \ 's:string:1'
"             \ ]
"             \ }
 let g:tagbar_type_javascript = {
    \ 'kinds' : [
        \ 'v:global variables:0:0',
        \ 'o:objects:1',
        \ 'c:classes',
        \ 'p:properties:0:0',
        \ 'a:array:1:0',
        \ 's:string:1:0',
        \ 'm:methods',
        \ 'f:functions'
    \ ],
\ }
let g:tagbar_type_php = {
            \ 'kinds'     : [
            \ 'c:classes',
            \ 'f:functions'
            \ ]
            \ }

let g:tagbar_type_scala = {
            \ 'ctagstype' : 'Scala',
            \ 'kinds'     : [
            \ 'p:packages:1',
            \ 'V:values',
            \ 'v:variables',
            \ 'T:types',
            \ 't:traits',
            \ 'o:objects',
            \ 'a:aclasses',
            \ 'c:classes',
            \ 'r:cclasses',
            \ 'm:methods'
            \ ]
            \ }

let g:tagbar_type_sh = {
            \ 'kinds'     : [
            \ 'f:functions'
            \ ]
            \ }

"    let g:tagbar_type_scala = {}
"    let g:tagbar_type_scala.ctagstype = 'Scala'
"    let g:tagbar_type_scala.kinds = [
"                \ {'short' : 'p', 'long' : 'packages', 'fold' : 1 },
"                \ {'short' : 'V', 'long' : 'values', 'fold' : 0 },
"                \ {'short' : 'v', 'long' : 'variables', 'fold' : 0 },
"                \ {'short' : 'T', 'long' : 'types', 'fold' : 0 },
"                \ {'short' : 't', 'long' : 'traits', 'fold' : 0 },
"                \ {'short' : 'o', 'long' : 'objects', 'fold' : 0 },
"                \ {'short' : 'a', 'long' : 'aclasses', 'fold' : 0 },
"                \ {'short' : 'c', 'long' : 'classes', 'fold' : 0 },
"                \ {'short' : 'r', 'long' : 'cclasses', 'fold' : 0 },
"                \ {'short' : 'm', 'long' : 'methods', 'fold' : 0 }
"                \ ]
    let g:tagbar_type_scala.sro = '.'
    let g:tagbar_type_scala.kind2scope = {
                \ 'T' : 'type',
                \ 't' : 'trait',
                \ 'o' : 'object',
                \ 'a' : 'abstract class',
                \ 'c' : 'class',
                \ 'r' : 'case class'
                \ }
    let g:tagbar_type_scala.scope2kind = {
                \ 'type' : 'T',
                \ 'trait' : 't',
                \ 'object' : 'o',
                \ 'abstract class' : 'a',
                \ 'class' : 'c',
                \ 'case class' : 'r'
                \ }
    
"let s:known_types.scala = type_scala
"        \ 'sro'        : '->',
"        \ 'kind2scope' : {
"            \ 's' : 'subroutine',
"            \ 'v' : 'variable'
"        \ },
"        \ 'scope2kind' : {
"            \ 'subroutine'      : 's',
"            \ 'variable' : 'v'
"        \ }

"    let g:tagbar_type_python = {}
"    let g:tagbar_type_python.ctagstype = 'python'
"    let g:tagbar_type_python.kinds     = [
"        \ 'i:imports:1',
"        \ 'c:classes:0',
"        \ 'f:functions:0',
"        \ 'm:members:0',
"        \ 'v:variables:0'
"    \ ]
"    let g:tagbar_type_python.sro        = '.'
"    let g:tagbar_type_python.kind2scope = {
"        \ 'c' : 'class',
"        \ 'f' : 'function',
"        \ 'm' : 'function',
"        \ 'v' : 'variable'
"    \ }
"    let g:tagbar_type_python.scope2kind = {
"        \ 'class'    : 'c',
"        \ 'function' : 'f'
"    \ }
"    let g:tagbar_type_python.replace = 1
let g:tagbar_type_asciidoc = {
            \ 'ctagstype' : 'asciidoc',
            \ 'kinds' : [
            \ 's:Table of Contents'
            \ ]
            \ }

" let g:tagbar_type_markdown = {
"     \ 'ctagstype' : 'markdown',
"     \ 'kinds' : [
"         \ 'h:Heading_L1',
"         \ 'i:Heading_L2',
"         \ 'k:Heading_L3'
"     \ ]
" \ }

let g:tagbar_type_markdown = {
            \ 'ctagstype': 'markdown',
            \ 'ctagsbin' : 'markdown2ctags.py',
            \ 'ctagsargs' : '-f - --sort=yes',
            \ 'kinds' : [
            \ 's:sections',
            \ 'i:images'
            \ ],
            \ 'sro' : '|',
            \ 'kind2scope' : {
            \ 's' : 'section',
            \ },
            \ 'sort': 0,
            \ }

let g:tagbar_type_rst = {
            \ 'ctagstype': 'rst',
            \ 'ctagsbin' : 'rst2ctags.py',
            \ 'ctagsargs' : '-f - --sort=yes',
            \ 'kinds' : [
            \ 's:sections',
            \ 'i:images'
            \ ],
            \ 'sro' : '|',
            \ 'kind2scope' : {
            \ 's' : 'section',
            \ },
            \ 'sort': 0,
            \ }
let g:tagbar_sort = 0
nnoremap <silent> <S-F8> :TagbarToggle<cr>
" nnoremap <silent> <S-F8> :TagbarOpenAutoClose<CR>/
" nnoremap <silent> <F9> :TlistSync<CR>

"ShowFunc
" map  <S-F8>   <Plug>ShowFunc
" map! <S-F8>   <Plug>ShowFunc 

"surround
nmap š ysiw
nmap đ ds
nmap č cs
nmap <M-y> ys
nmap """ ysiw"
nmap ''' ysiw'

"calendar
" let g:calendar_monday = 1
" nmap <unique> <Leader>kal <Plug>CalendarV
" nmap <unique> <Leader>kaL <Plug>CalendarH


"manpageview
let g:manpageview_multimanpage=0

"SQLUtilities
let g:sqlutil_align_comma=1

"grep
let Grep_Skip_Dirs='.svn RCS CVS SCCS'

"vimplate
let Vimplate = "$HOME/bin/vimplate"

"syntax/tt2
:let b:tt2_syn_tags = '\[% %] <!-- -->'

"vimcommander
" noremap <silent> <F11> :cal VimCommanderToggle()<CR>
:com -nargs=? -complete=file C cal VimCommanderToggle('<args>')
":com Cf cal VimCommanderToggle('%:h')
":com Cd cal VimCommanderToggle('$PWD')

"AlignPlugin
let g:Align_xstrlen= 1 "bez toga :align ne radi dobro sa multibyte

"qbuf
"brišem ga
"let g:qb_hotkey = "<F4>"

"indent/html
" let g:html_indent_inctags="TMPL_IF"

"supertab
let g:SuperTabDefaultCompletionType = "<c-p>"
" let g:SuperTabDefaultCompletionType = "context"
" let g:SuperTabContextDefaultCompletionType = "<c-p>"
let g:SuperTabLongestHighlight = 1
let g:SuperTabRetainCompletionDuration = 'completion'
" let loaded_supertab = 1

"VimOrg
let g:org_todo_setup='TODO | DONE'

"headlights
"


"auto-pairs"
"
let g:AutoPairsShortcutToggle='<Leader>p'
let g:AutoPairsShortcutFastWrap='<Leader>e'


"headlights
"    let g:headlights_use_plugin_menu = 1
"Default value: 0
"    let g:headlights_show_files = 1
"Default value: 0
"    let g:headlights_show_commands = 1
"Default value: 1
"    let g:headlights_show_mappings = 1
"Default value: 1
"    let g:headlights_show_abbreviations = 1
"Default value: 0
"    let g:headlights_show_functions = 1
"Default value: 0
"    let g:headlights_show_highlights = 1
"Default value: 0
"    let g:headlights_show_load_order = 1
"Default value: 0
"    let g:headlights_smart_menus = 1
"Default value: 1
"noremap <silent> <F4> :BufExplorer<CR>
noremap <silent> <F4> :BufExplorerHorizontalSplit<CR>
"noremap <silent> <F4> :BufExplorerVerticalSplit<CR>

"Powerline
"let g:Powerline_symbols = 'unicode'
" let g:Powerline_symbols = 'fancy'
"let g:Powerline_loaded = 1

"mark
" nmap <unique> <Leader>gm <Plug>MarkSet
" xmap <unique> <Leader>gm <Plug>MarkSet
" nmap <unique> <Leader>gr <Plug>MarkRegex
" xmap <unique> <Leader>gr <Plug>MarkRegex
" nmap <unique> <Leader>gn <Plug>MarkClear
" nmap <unique> <Leader>g* <Plug>MarkSearchCurrentNext
" nmap <unique> <Leader>g# <Plug>MarkSearchCurrentPrev
" nmap <unique> <Leader>g/ <Plug>MarkSearchAnyNext
" nmap <unique> <Leader>g? <Plug>MarkSearchAnyPrev

"pydiction
" let g:pydiction_location = '/home/vsajko/.vim/bundle/pydiction/after/ftplugin/python_pydiction.vim'

"syntastic
" let g:syntastic_python_checkers = ['pylint']
" let g:syntastic_python_checkers = ['ep8', 'pyflakes']
" let g:syntastic_python_checkers = ['pyflakes', 'pep8']
let g:syntastic_python_checkers = ['frosted', 'pep8', 'pyflakes']
" let g:syntastic_python_ssh_exe = "ssh"
" let g:syntastic_python_ssh_exe = "ssh -F ../ssh-config tcbase 'cd /opt/tcbase/tcbase && pylint '"
" let g:syntastic_python_checkers = ['frosted']
" let g:syntastic_python_checkers = ['pyflakes']
" let g:syntastic_python_checkers = ['pep8']
" let g:syntastic_python_checkers = ['pylint']
let g:syntastic_auto_loc_list=0
let g:syntastic_check_on_open=0
let g:syntastic_stl_format='(>%fe /%t)'
" http://pep8.readthedocs.org/en/latest/intro.html#error-codes
" let g:syntastic_python_pep8_args='--ignore=E501,W293,E231,E303,W391,W291,E241,E126,E251,E121,E125,E711'
let g:syntastic_python_pep8_args='--ignore=E501'
" tehre is bug in frosted only one parameter for ignore is accepted
" let g:syntastic_python_frosted_args='--ignore=W101,E101,E103'
let g:syntastic_python_frosted_args='-i E101 -i E103'
let g:syntastic_id_checkers = 1
" let g:syntastic_python_pylint_args='--disable=line-too-long,fixme,missing-docstring,unused-wildcard-import,too-few-public-methods,'
"             \ . 'too-many-locals,too-many-arguments,too-many-lines,too-many-instance-attributes,too-many-public-methods,'
"             \ . 'too-many-branches,too-many-statements,too-many-return-statements,too-many-branches,invalid-name,logging-not-lazy,'
"             \ . 'unused-import,unused-wildcard-import,wildcard-import,trailing-whitespace'
command! Pylint execute "SyntasticCheck pylint"

" let syntastic_python_pylint_args='-E'

" original is [Syntax: line:%F (%t)]
let syntastic_loc_list_height=5
let g:syntastic_enable_highlighting = 1
let g:syntastic_aggregate_errors = 1
" let g:syntastic_python_pye_exec=''
let g:syntastic_javascript_checkers = ['jshint']
" let g:syntastic_javascript_jshint_args = '--config ~/.jshintrc'
let g:syntastic_html_checkers=['w3', 'jshint']
let g:syntastic_html_validator_parser='html5'
"virtualenv
" let g:virtualenv_auto_activate='sage'

"easytags
let g:easytags_events = ['BufWritePost']
let g:easytags_on_cursorhold = 0
let g:easytags_auto_highlight = 0
let g:easytags_auto_highlight = 0
" let g:easytags_dynamic_files = 1
" let g:easytags_by_filetype="/home/vsajko/easytags/"
" let g:easytags_autorecurse = 1
" let g:easytags_auto_update = 0

"commentary
if maparg('``') ==# ''
  xmap ``  <Plug>Commentary
  nmap ``  <Plug>CommentaryLine
  " nmap ``` <Plug>CommentaryLine
  " nmap <leader>x <Plug>CommentaryLine
  " nnomap <leader>c normal j"
  " nmap <leader>x \\\j
endif

"ultisnips
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<C-l>"
let g:UltiSnipsJumpBackwardTrigger="<M-l>"

"youcompleteme
let g:ycm_allow_changing_updatetime=0
let g:ycm_autoclose_preview_window_after_completion=1
" let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax=1
" let g:ycm_auto_start_csharp_server = 1
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_filepath_completion_use_working_dir = 1
let g:ycm_use_ultisnips_completer=1
" let g:ycm_min_num_of_chars_for_completion = 1
nmap <leader>yd :YcmCompleter GoToDefinition<CR>
nmap <leader>ys :YcmCompleter GoToDeclaration<CR>
nmap <leader>yy :YcmCompleter GoTo<CR>
nmap <C-LeftMouse> :YcmCompleter GoTo<CR>

" let g:ycm_min_num_of_chars_for_completion = 99
" let g:ycm_auto_trigger = 0
" let g:ycm_path_to_python_interpreter = '/usr/bin/python'
" this does not work
" let g:ycm_path_to_python_interpreter = 'ssh vagrant@127.0.0.1 -p 2222 -i ~/.vagrant.d/insecure_private_key python'
" identifier completion trigger
" let g:ycm_auto_trigger = 0
" semantic completion trigger , default is 2
" let g:ycm_min_num_of_chars_for_completion=99

"ropevim BLOODY THING DON'T WORK
" let $PYTHONPATH .= ":/home/vsajko/.virtualenvs/sage/lib/python2.7/site-packages:/home/vsajko/.virtualenvs/sage/lib/python2.7/site-packages/rope:/home/vsajko/.virtualenvs/sage/lib/python2.7/site-packages/ropemode/"
" source /home/vsajko/.virtualenvs/sage/share/vim/plugin/ropevim.vim


" let ropevim_codeassist_maxfixes: The maximum number of syntax errors to fix for code assists. The default value is 1.
let g:ropevim_local_prefix='<C-p>'
let g:ropevim_global_prefix='<C-p>'
" let g:ropevim_enable_shortcuts: Shows whether to bind ropevim shortcuts keys. Defaults to 1.
" let g:ropevim_guess_project: If non-zero, ropevim tries to guess and open the project that contains the file on which a ropevim command is performed when no project is already open.
let g:ropevim_enable_autoimport=1
let g:ropevim_autoimport_modules = ["os", "shutil"]
" let g:ropevim_autoimport_modules: The name of modules whose global names should be cached. RopeGenerateAutoimportCache reads this list and fills its cache.
" let g:ropevim_autoimport_underlineds: If set, autoimport will cache names starting with underlines, too.
" let g:ropevim_goto_def_newwin: If set, ropevim will open a new buffer for "go to definition" result if the definition found is located in another file. By default the file is open in the same buffer.
" let g:ropevim_open_files_in_tabs: If non-zero, ropevim will open files in tabs. This is disabled by default.

"jedi-vim
" let g:jedi#show_call_signatures=0
" let g:jedi#popup_on_dot = 0
" let g:jedi#show_call_signatures = 0


" localvimrc lvimrc
let g:localvimrc_sandbox=0

let g:localvimrc_persistent=1

" rooter
let g:rooter_patterns = ['.lvimrc', 'vimrc.vim']
let g:rooter_manual_only = 1

" fontzoom
" let g:fontzoom_no_default_key_mappings=1
" silent! nmap <unique> <silent> <C-ScrollWheelUp> <Plug>(fontzoom-larger)
" silent! nmap <unique> <silent> <C-ScrollWheelDown> <Plug>(fontzoom-smaller)

" emmet
" ne radi, ne prepoznaje filetype osimza html i haml 
" let g:user_emmet_settings = {
"             \  'htmldjango' : {
"             \  'filters' : 'html',
"             \    'snippets': {
"             \       'for' : '$({% for ${cursor} in %} \n\t{% endfor %})',
"             \       'banana' : '(banana ${cursor} je zuta)'
"             \    }, 
"             \  },
"             \  'html' : {
"             \  'filters' : 'html',
"             \    'abbreviations': {
"             \       'for' : '$({% for ${cursor} in %} \n\t{% endfor %})',
"             \       'banana' : '(banana ${cursor} je zuta)'
"             \    }, 
"             \  },
"             \}
"
"
nmap <leader>h <Plug>(quickhl-manual-this)
xmap <leader>h <Plug>(quickhl-manual-this)
" nmap H <Plug>(operator-quickhl-manual-this-motion)
" xmap H <Plug>(operator-quickhl-manual-this-motion)

" nmap <F9>     <Plug>(quickhl-manual-toggle)
" xmap <F9>     <Plug>(quickhl-manual-toggle)
" nmap <Space>M <Plug>(quickhl-manual-reset)
" xmap <Space>M <Plug>(quickhl-manual-reset)
nmap <leader>k <Plug>(quickhl-cword-toggle)
" nmap <Space>] <Plug>(quickhl-tag-toggle)
" map H <Plug>(operator-quickhl-manual-this-motion)
let g:quickhl_cword_hl_command='link QuickhlCword CursorLineNr' 

" expand-region
let g:expand_region_text_objects = get(g:, 'expand_region_text_objects', {
            \ 'iw'  :0,
            \ 'iW'  :0,
            \ 'i"'  :0,
            \ 'i''' :0,
            \ 'i]'  :1,
            \ 'it'  :0,
            \ 'at'  :0,
            \ 'i>'  :0,
            \ 'a>'  :0,
            \ 'ib'  :1,
            \ 'iB'  :1,
            \ 'il'  :0,
            \ 'ip'  :0,
            \ 'ai'  :1,
            \ 'ie'  :0,
            \})
map đ <Plug>(expand_region_expand)
map ž <Plug>(expand_region_shrink)

" textobj-user
call textobj#user#plugin('djangovar', {
\   'code': {
\     'pattern': ['{{', '}}'],
\     'select-a': 'ad',
\     'select-i': 'id',
\   },
\ })

call textobj#user#plugin('djangoblock', {
\   'code': {
\     'pattern': ['{%', '%}'],
\     'select-a': 'aD',
\     'select-i': 'iD',
\   },
\ })

" easy-align
vnoremap <silent> <Enter> :EasyAlign<Enter>


" indentLine
let g:indentLine_enabled=1
let g:indentLine_char = '┊'

" indentguides
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 1
let g:indent_guides_start_level = 2
let g:indent_guides_color_change_percent = 3

"Voom
nnoremap <silent> <F9> :VoomToggle python<CR>

"json
let g:vim_json_syntax_conceal = 0

"choosewin
let g:choosewin_overlay_enable = 1

"viewdoc
" let g:no_viewdoc_maps=1
" nnoremap <unique> K       :call ViewDoc('doc', '<cword>')<CR>


" unite
noremap <F7> :<C-u>Unite -start-insert -vertical -no-quit -keep-focus line:forward<CR>
" noremap <F8> :<C-u>Unite -start-insert -vertical outline<CR>
noremap <F8> :<C-u>Unite -start-insert outline tag<CR>
noremap <S-F7> :<C-u>Unite -start-insert -vertical outline<CR>
noremap <F12> :<C-u>Unite -start-insert buffer:- file_rec:<CR>
noremap <S-F12> :<C-u>Unite -vertical -no-truncate -start-insert buffer:- file_rec<CR>
noremap <F10> :<C-u>Unite -start-insert tab<CR>
noremap <S-F10> :<C-u>Unite -start-insert window:all<CR>
" noremap <S-F10> :<C-u>Unite -start-insert file:%:h<CR>
noremap <F11> :<C-u>Unite -start-insert file:%:h<CR>
noremap <F1> :<C-u>Unite -start-insert file_mru<CR>
command! Uc Unite change -auto-preview
command! Uj Unite jump -auto-preview
command! Ur UniteResume
command! UU UniteResume
noremap <F2> :<C-u>UniteResume<CR>
let g:unite_converter_file_directory_width=120
let g:unite_source_tag_max_fname_length=120
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
    " Overwrite settings.
    imap <silent><buffer><expr> <C-s>     unite#do_action('split')
    imap <silent><buffer><expr> <C-v>     unite#do_action('vsplit')
    nmap <silent><buffer><expr> <C-s>     unite#do_action('split')
    nmap <silent><buffer><expr> <C-v>     unite#do_action('vsplit')
endfunction

let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.test = {
            \     'command_candidates': {
            \     'hello': 'echo "hello"', 
            \     'python': 'VimShellInteractive python'}
            \ }


let g:unite_source_outline_filetype_options = {
      \ '*': {
      \   'auto_update': 1,
      \   'auto_update_event': 'write',
      \ },
      \ 'cpp': {
      \   'auto_update': 0,
      \ },
      \ 'javascript': {
      \   'ignore_types': ['comment'],
      \ },
      \ 'markdown': {
      \   'auto_update_event': 'hold',
      \ },
      \}

" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_insert_char_pre = 0
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
" g:neocomplete#sources         *g:neocomplete#sources*
" It is a dictionary to decide use source names.  The key is
" filetype and the value is source names list.  If the key is
" "_", the value will be used for default filetypes.  For
" example, you can disable some sources in C++ filetype.
" If the value is "_", it will load all sources.
" Default value is {}.
" >
" " Examples:
" if !exists('g:neocomplete#sources')
"     let g:neocomplete#sources = {}
" endif
" let g:neocomplete#sources._ = ['buffer']
" let g:neocomplete#sources.cpp = ['buffer', 'include']

" smalls
" map normal-mode 's' for simple search
" nmap s <Plug>(smalls)
" 
" clever-f
" g:clever_f_ignore_case=1
let g:clever_f_smart_case=1
let g:clever_f_show_prompt=1
let g:clever_f_mark_cursor=1
" 
" operator-surround
map <silent>sa <Plug>(operator-surround-append)
map <silent>sd <Plug>(operator-surround-delete)
map <silent>sr <Plug>(operator-surround-replace)
" delete or replace most inner surround
" if you use vim-textobj-anyblock
" nmap <silent>sdd <Plug>(operator-surround-delete)<Plug>(textobj-anyblock-a)
" nmap <silent>srr <Plug>(operator-surround-replace)<Plug>(textobj-anyblock-a)
"
" textobj-between
let g:textobj_between_no_default_key_mappings=0
omap an <Plug>(textobj-between-a)
omap in <Plug>(textobj-between-i)
xmap an <Plug>(textobj-between-a)
xmap in <Plug>(textobj-between-i)

" patternjump
let g:patternjump_highlight=1

" autoformat
" let g:formatprg_args_python = "--max-line-length=79 -a"
" let g:formatprg_args_expr_python = '"/dev/stdin --max-line-length=80 -a"'
" let g:formatprg_args_expr_python = '"/dev/stdin --max-line-length=80"'
" let g:formatprg_args_expr_javascript = '"-j --good-stuff -f - -".(&expandtab ? "s ".&shiftwidth : "t").(&textwidth ? " -w ".&textwidth : "")'
" let g:formatprg_args_expr_javascript = '"-j --good-stuff -s 4 -w 110 -f - "'
" let g:formatdef_jsbeautify_javascript = '"js-beautify -f - -".(&expandtab ? "s ".&shiftwidth : "t").(&textwidth ? " -w ".&textwidth : "")'
" let g:formatdef_jsbeautify_javascript = '"js-beautify -j --good-stuff -s 4 -w 110 -f - "'

" " colorv
let g:colorv_no_global_map=1
let g:colorv_uppercase=0

" python-syntax
let g:python_version_2 = 1
" let g:python_highlight_builtins = 1
let g:python_highlight_exceptions = 1
let g:python_highlight_string_formatting = 1
let g:python_highlight_string_format = 1
let g:python_highlight_string_templates = 1
" let g:python_highlight_all = 1

" session xolox peter odding
" let g:session_command_aliases = 1
" let g:session_autosave = 'yes'

" textobj-python
xmap ak <Plug>(textobj-python-class-a)
omap ak <Plug>(textobj-python-class-a)
xmap ik <Plug>(textobj-python-class-i)
omap ik <Plug>(textobj-python-class-i)

" bookmarks
" nmap <Leader>bt <Plug>ToggleBookmark
" nmap <Leader>ba <Plug>Annotate
" nmap <Leader>bs <Plug>ShowAllBookmarks
" nmap <Leader>bj <Plug>NextBookmark
" nmap <Leader>bk <Plug>PrevBookmark
" nmap <Leader>bd <Plug>ClearBookmarks
" nmap <Leader>bw <Plug>ClearAllBookmarks
" let g:bookmark_highlight_lines = 1
" highlight BookmarkLine guibg=#6b0bfb gui=NONE
" highlight BookmarkAnnotationLine guibg=#6b0bfb gui=NONE
" highlight BookmarkLineDefault guibg=#6b0b0b gui=NONE
" highlight BookmarkAnnotationLineDefault guibg=#6b0b0b gui=NONE
" ≡  
" let g:bookmark_sign = '♂'
" let g:bookmark_annotation_sign = '♀'
" let g:bookmark_save_per_working_dir = 0
" let g:bookmark_auto_save = 1
let g:bookmark_highlight_lines = 1

" markology
let g:markology_enable=1
let g:markology_include="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let g:markology_textlower="\t\t"



" increment-activator
let g:increment_activator_filetype_candidates = {
  \   '_' : [
  \     ['info', 'warning', 'notice', 'error'],
  \     ['and', 'or', 'not'],
  \     ['left', 'right'],
  \     ['yes', 'no'],
  \   ],
  \   'cucumber': [
  \     ['Given', 'And', 'When', 'Then'],
  \   ],
  \   'erlang': [
  \     ['module', 'export'],
  \     [
  \       'is_alive', 'is_atom', 'is_binary', 'is_bitstring',
  \       'is_boolean', 'is_float', 'is_function',
  \       'is_integer', 'is_list', 'is_number',
  \       'is_pid', 'is_port', 'is_process_alive',
  \       'is_record', 'is_reference', 'is_tuple',
  \     ],
  \   ],
  \   'git-rebase-todo': [
  \     ['pick', 'reword', 'edit', 'squash', 'fixup', 'exec'],
  \   ],
  \   'go': [
  \     ['true', 'false', 'iota', 'nil'],
  \     ['byte', 'complex64', 'complex128'],
  \     ['int', 'int8', 'int16', 'int32', 'int64'],
  \     ['uint', 'uint8', 'uint16', 'uint32', 'uint64'],
  \     ['float32', 'float64'],
  \     ['interface', 'struct'],
  \   ],
  \   'python': [
  \     ['debug', 'info', 'warning', 'error', 'critical'],
  \     ['console', 'file']
  \   ]
  \ }


" signify
" nmap <leader>gj <plug>(signify-next-hunk)
" nmap <leader>gk <plug>(signify-prev-hunk)

" gitgutter
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
nmap <Leader>gj <Plug>GitGutterNextHunk
nmap <Leader>gk <Plug>GitGutterPrevHunk
nmap <Leader>gp <Plug>GitGutterPreviewHunk
nmap <Leader>gr <Plug>GitGutterRevertHunk
nmap <Leader>gs <Plug>GitGutterStageHunk


" colorscheme switcher
let g:colorscheme_switcher_define_mappings=0
let g:colorscheme_switcher_exclude = ['default', 'test']
command ColoN :NextColorScheme
command ColoP :PrevColorScheme
let g:colorscheme_switcher_exclude_builtins=1
let g:colorscheme_switcher_keep_background=1

" ZoomWin
nmap <unique> <c-w>m  <Plug>ZoomWin
" let foo =['apprentice',
"  'badwolf',
"  'disciple',
"  'earendel',
"  'earendel_my',
"  'freya',
"  'holokai',
"  'iceberg',
"  'last256',
"  'lucius',
"  'luna',
"  'luna-term',
"  'molokai',
"  'moria',
"  'pencil',
"  'sienna',
"  'sol',
"  'sol-term',
"  'solarized',
"  'Tomorrow ',
"  'Tomorrow-Night',
"  'Tomorrow-Night-Blue',
"  'Tomorrow-Night-Bright',
"  'Tomorrow-Night-Eighties']

" multiple cursors
let g:multi_cursor_start_key='g<C-n>'
let g:multi_cursor_start_word_key='<C-n>'

" colorv
let g:colorv_no_global_map = 1
let g:colorv_debug = 0

" vimpy
let g:vimpy_prompt_resolve = 1
let g:vimpy_remove_unused = 1
" matchparen
function MyMatchParenOff()
    " windo silent! call matchdelete(3)
    unlet! g:loaded_matchparen
    autocmd! matchparen
    echo 'MatchParrenOff'
endfunction

function MyMatchParenOn()
    " let winnr = winnr()
    runtime plugin/matchparen.vim
    " windo doautocmd CursorMoved
    echo 'MatchParrenOn'
endfunction

command! MatchParenOff call MyMatchParenOff()
command! MatchParenOn call MyMatchParenOn()

" fugitive
" autocmd FileType fugitiveblame call MyMatchParenOff()
" autocmd FileType fugitiveblame setlocal synmaxcol=12
" autocmd FileType fugitiveblame call MyMatchParenOn()
