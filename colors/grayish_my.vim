" Colorscheme created with ColorSchemeEditor v1.2.3
"Name: grayish_my
"Maintainer: 
"Last Change: 2014 Apr 09
set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "grayish_my"

" highlight Normal guifg=#aaaaaa guibg=#272822 gui=NONE
highlight Normal guifg=#bbbbbb guibg=#1E1E1A gui=NONE
highlight Cursor guifg=#000000 guibg=#13E86D gui=NONE
highlight CursorColumn guibg=#111111 gui=NONE
highlight CursorLine guibg=#111111 gui=NONE

if has('spell')
    highlight SpellBad gui=undercurl
    highlight SpellCap gui=undercurl
    highlight SpellLocal gui=undercurl
    highlight SpellRare gui=undercurl
endif

highlight Pmenu guifg=#dadada guibg=#3d5078 gui=NONE
highlight PmenuSel guifg=#000000 guibg=#f3c201 gui=NONE
highlight PmenuSbar guifg=#dadada guibg=#324263 gui=NONE
highlight PmenuThumb guifg=#dadada guibg=#5c77ad gui=NONE
highlight TabLine guifg=#e5e5e5 guibg=#4a4a4a gui=underline
highlight TabLineFill guifg=#e5e5e5 guibg=#4a4a4a gui=underline
highlight TabLineSel guifg=#e5e5e5 guibg=bg gui=bold

highlight link CursorIM cleared
highlight DiffAdd guifg=#dadada guibg=#558817 gui=NONE
highlight DiffChange guifg=#dadada guibg=#1b2e85 gui=NONE
highlight DiffDelete guifg=#dadada guibg=#9f0018 gui=NONE
highlight DiffText guifg=#dadada guibg=#2540ba gui=bold
highlight Directory guifg=#8c91e8 guibg=bg gui=NONE
highlight ErrorMsg guifg=#e5e5e5 guibg=bg gui=bold
highlight Folded guifg=#FFE55F guibg=bg gui=NONE
highlight IncSearch guifg=#dadada guibg=#a7380e gui=NONE
highlight MatchParen guifg=red guibg=bg gui=bold
highlight ModeMsg guifg=fg guibg=bg gui=bold
highlight MoreMsg guifg=#b5b5b5 guibg=bg gui=bold
highlight NonText guifg=#005f87 guibg=bg gui=NONE
highlight Question guifg=#b5b5b5 guibg=bg gui=bold
highlight Search guifg=#dadada guibg=#964F18 gui=NONE
highlight SpecialKey guifg=#FFE500 guibg=#331C33 gui=NONE
highlight Title guifg=#e5e5e5 gui=bold
highlight Visual guibg=#606060 gui=NONE
highlight VisualNOS guifg=#bfcadf guibg=bg gui=bold,underline

" TODO
highlight link multiple_cursors_cursor cursor
highlight link multiple_cursors_visual Visual


highlight WarningMsg guifg=#fb007a guibg=bg gui=bold
highlight Error guifg=#ff2727 guibg=bg gui=NONE
highlight Todo guifg=#512b1e guibg=#fedc56 gui=bold
highlight Underlined guifg=#8c91e8 guibg=bg gui=underline

highlight ColorColumn guibg=#282832  gui=NONE
highlight FoldColumn guifg=#9a9a9a guibg=bg gui=NONE
highlight LineNr guifg=#555555 guibg=bg gui=bold
highlight CursorLineNr guifg=#FFFF00 guibg=#101010 gui=NONE
highlight SignColumn guifg=#9a9a9a guibg=#151515 gui=NONE
highlight StatusLine guifg=#008ec4 guibg=#151515 gui=None 
highlight StatusLineItem1 guifg=#005f87 guibg=#151515 gui=bold
highlight StatusLineItem2 guifg=#E8C88B guibg=#151515 gui=NONE
highlight StatusLineItem3 guifg=#FFCCE8 guibg=#151515 gui=NONE
highlight StatusLineNC guifg=#606060 guibg=#151515 gui=underline
highlight VertSplit guifg=#afbacf guibg=#151515 gui=NONE
highlight WildMenu guifg=#000000 guibg=#fbca01 gui=bold

highlight GitGutterAdd guifg=#CCC2BE  guibg=#0435fe gui=NONE
highlight GitGutterChange guifg=#CCC2BE  guibg=#0435fe gui=NONE
highlight GitGutterDelete guifg=#CCC2BE  guibg=#0435fe gui=NONE
highlight GitGutterChangeDelete guifg=#CCC2BE  guibg=#0435fe gui=NONE

highlight BookmarkLine guifg=yellow guibg=green
highlight BookmarkAnnotationLine guifg=blue guibg=yellow

highlight Conceal guifg=#00CC1B  guibg=black gui=NONE

highlight Comment guifg=#31826E guibg=bg gui=italic
highlight Exception guifg=#EA95E1 guibg=bg gui=bold
highlight Function guifg=#cccccc guibg=bg gui=None
" highlight pythonDecorator guifg=#545454 guibg=bg gui=NONE
highlight Ignore guifg=bg guibg=bg gui=NONE
" highlight Repeat guifg=#E32791 guibg=bg gui=bold
" highlight Conditional guifg=#20bbcf guibg=bg gui=bold

highlight Operator guifg=#C4A4BD guibg=bg gui=bold
highlight link pythonDecorator Operator
highlight Constant guifg=#D5B07E guibg=bg gui=NONE
highlight link Boolean Constant
highlight link Character Constant
highlight link Number Constant
highlight link String Constant
highlight Special guifg=#d3a901 guibg=bg gui=NONE
highlight link Debug Special
highlight link Delimiter Special
highlight link SpecialChar Special
highlight link SpecialComment Special
highlight link Tag Special
highlight PreProc guifg=#D1DBEB guibg=bg gui=NONE
highlight link Define PreProc
highlight link Include PreProc
highlight link PreCondit PreProc
highlight link Macro PreProc
highlight Statement guifg=#c30771 guibg=bg gui=bold
highlight link Repeat Statement
highlight link Conditional Statement
highlight link Keyword Statement
highlight link Identifier Statement
highlight link Label Statement
" in javascrit link from identifier to statement does not work 
highlight Identifier guifg=#c30771 guibg=bg gui=bold
highlight Type guifg=#95a4ea guibg=bg gui=bold
highlight link StorageClass Type
highlight link Structure Type
highlight link Typedef Type

let g:grayish_my_Metadata = {
            \"Palette" : "black:white:gray50:red:purple:blue:light blue:green:yellow:orange:lavender:brown:goldenrod4:dodger blue:pink:light green:gray10:gray30:gray75:gray90",
            \"Last Change" : "2014 Apr 09",
            \"Name" : "grayish_my",
            \}

