" Colorscheme created with ColorSchemeEditor v1.2.3
"Name: earendel_my
"Maintainer: 
"Last Change: 2014 Apr 09
set background=dark
if version > 580
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif
let g:colors_name = "earendel_my"

if v:version >= 700
	" highlight CursorColumn guibg=#101010 gui=NONE
	" highlight CursorLine guibg=#101010 gui=NONE
	highlight CursorColumn guibg=#111111 gui=NONE
	highlight CursorLine guibg=#111111 gui=NONE
	highlight Pmenu guifg=#dadada guibg=#3d5078 gui=NONE
	highlight PmenuSel guifg=#000000 guibg=#f3c201 gui=NONE
	highlight PmenuSbar guifg=#dadada guibg=#324263 gui=NONE
	highlight PmenuThumb guifg=#dadada guibg=#5c77ad gui=NONE
	highlight TabLine guifg=#e5e5e5 guibg=#4a4a4a gui=underline
	highlight TabLineFill guifg=#e5e5e5 guibg=#4a4a4a gui=underline
	highlight TabLineSel guifg=#e5e5e5 guibg=bg gui=bold
	if has('spell')
		highlight SpellBad gui=undercurl
		highlight SpellCap gui=undercurl
		highlight SpellLocal gui=undercurl
		highlight SpellRare gui=undercurl
	endif
endif
" highlight Cursor guifg=#000000 guibg=#20bbfc gui=NONE
highlight Cursor guifg=#000000 guibg=#13E86D gui=NONE
highlight link CursorIM cleared
highlight DiffAdd guifg=#dadada guibg=#558817 gui=NONE
highlight DiffChange guifg=#dadada guibg=#1b2e85 gui=NONE
highlight DiffDelete guifg=#dadada guibg=#9f0018 gui=NONE
highlight DiffText guifg=#dadada guibg=#2540ba gui=bold
highlight Directory guifg=#8c91e8 guibg=bg gui=NONE
highlight ErrorMsg guifg=#e5e5e5 guibg=bg gui=bold
highlight FoldColumn guifg=#9a9a9a guibg=bg gui=NONE
highlight Folded guifg=#FFE55F guibg=bg gui=NONE
highlight IncSearch guifg=#dadada guibg=#a7380e gui=NONE
highlight LineNr guifg=#7a7a7a guibg=#101010 gui=NONE
highlight MatchParen guifg=orange guibg=bg gui=bold
highlight ModeMsg guifg=fg guibg=bg gui=bold
highlight MoreMsg guifg=#b5b5b5 guibg=bg gui=bold
highlight NonText guifg=#005f87 guibg=bg gui=NONE
highlight Normal guifg=#cacaba guibg=#312121 gui=NONE
highlight Question guifg=#b5b5b5 guibg=bg gui=bold
highlight Search guifg=#dadada guibg=#964F18 gui=NONE
highlight SignColumn guifg=#9a9a9a guibg=#090909 gui=NONE
highlight SpecialKey guifg=#d3a901 guibg=bg gui=NONE
highlight StatusLine guifg=#005f87 guibg=#090909 gui=underline
highlight StatusLineNC guifg=#606060 guibg=#090909 gui=underline
highlight Title guifg=#e5e5e5 gui=bold
highlight VertSplit guifg=#afbacf guibg=#090909 gui=NONE
highlight Visual guibg=#606060 gui=NONE
highlight VisualNOS guifg=#bfcadf guibg=bg gui=bold,underline
highlight WarningMsg guifg=#fb007a guibg=bg gui=bold
highlight WildMenu guifg=#000000 guibg=#fbca01 gui=bold
highlight link Boolean Constant
highlight link Character Constant
highlight Comment guifg=#31826E guibg=bg gui=italic
highlight Conditional guifg=#20bbcf guibg=bg gui=bold
highlight Constant guifg=#D59D52 guibg=bg gui=NONE
highlight link Debug Special
highlight link Define PreProc
" highlight Define guifg=#fbaa01 guibg=bg gui=italic
highlight link Delimiter Special
highlight Error guifg=#ff2727 guibg=bg gui=NONE
highlight Exception guifg=#EA95E1 guibg=bg gui=bold
highlight link Float Number
" highlight link Function Identifier
highlight Function guifg=#fb007a guibg=bg gui=None
highlight pythonDecorator guifg=#545454 guibg=bg gui=NONE
highlight Identifier guifg=#c30771 guibg=bg gui=NONE
highlight Ignore guifg=bg guibg=bg gui=NONE
highlight link Include PreProc
highlight link Keyword Statement
highlight link Label Statement
highlight link Macro PreProc
highlight link Number Constant
highlight Operator guifg=#9754FF guibg=bg gui=bold
highlight link PreCondit PreProc
highlight PreProc guifg=#20a5ba guibg=bg gui=NONE
highlight Repeat guifg=#E32791 guibg=bg gui=bold
highlight Special guifg=#d3a901 guibg=bg gui=NONE
highlight link SpecialChar Special
highlight link SpecialComment Special
highlight Statement guifg=#008ec4 guibg=bg gui=bold
highlight link StorageClass Type
highlight link String Constant
highlight link Structure Type
highlight link Tag Special
highlight Todo guifg=#512b1e guibg=#fedc56 gui=bold
highlight Type guifg=#95a4ea guibg=bg gui=bold
highlight link Typedef Type
highlight Underlined guifg=#8c91e8 guibg=bg gui=underline
highlight ColorColumn guibg=#282828  gui=NONE
" highlight ColorColumn guifg=fg guibg=bg guisp=red  gui=NONE
highlight StatusLine term=bold,reverse cterm=bold,reverse gui=None guifg=#008ec4 guibg=#090909
highlight StatuLineStrong guifg=#005f87 guibg=#101010 gui=bold
highlight StatuLineStrong1 guifg=#101010 guibg=#c30771 gui=bold
" highlight StatuLineStrong2 guifg=#336611 guibg=bg gui=italic
" highlight StatuLineStrong2 guifg=#005f87 guibg=bg gui=italic
highlight StatuLineStrong2 guifg=#008ec4 guibg=bg gui=italic

"ColorScheme metadata{{{
if v:version >= 700
	let g:earendel_my_Metadata = {
				\"Palette" : "black:white:gray50:red:purple:blue:light blue:green:yellow:orange:lavender:brown:goldenrod4:dodger blue:pink:light green:gray10:gray30:gray75:gray90",
				\"Last Change" : "2014 Apr 09",
				\"Name" : "earendel_my",
				\}
endif
"}}}
" vim:set foldmethod=marker expandtab filetype=vim:
