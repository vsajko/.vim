" Colorscheme created with ColorSchemeEditor v1.2.3
"Name: grayish_white_my
"Maintainer:
"Last Change: 2014 Apr 09
set background=light

highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "grayish_white_my"

highlight Normal guifg=#111111 guibg=#FFFDE8 gui=NONE
highlight Cursor guifg=#ffffff guibg=#99085C gui=NONE
highlight CursorColumn guibg=#ffffff gui=NONE
highlight CursorLine guibg=#ffffff gui=NONE

if has('spell')
    highlight SpellBad gui=undercurl
    highlight SpellCap gui=undercurl
    highlight SpellLocal gui=undercurl
    highlight SpellRare gui=undercurl
endif

highlight Pmenu guifg=#252525 guibg=#c2af87 gui=NONE
highlight PmenuSel guifg=#ffffff guibg=#0c3dfe gui=NONE
highlight PmenuSbar guifg=#252525 guibg=#cdbd9c gui=NONE
highlight PmenuThumb guifg=#252525 guibg=#a38852 gui=NONE
highlight TabLine guifg=#1a1a1a guibg=#b5b5b5 gui=underline
highlight TabLineFill guifg=#1a1a1a guibg=#b5b5b5 gui=underline
highlight TabLineSel guifg=#1a1a1a guibg=bg gui=bold

highlight link CursorIM cleared
highlight DiffAdd guifg=#252525 guibg=#aa77e8 gui=NONE
highlight DiffChange guifg=#252525 guibg=#e4d17a gui=NONE
highlight DiffDelete guifg=#252525 guibg=#60ffe7 gui=NONE
highlight DiffText guifg=#252525 guibg=#dabf45 gui=bold
highlight Directory guifg=#66610A guibg=bg gui=NONE
highlight WarningMsg guifg=#CC2500 guibg=bg gui=bold
highlight Error guifg=#FF0533 guibg=bg gui=NONE
highlight ErrorMsg guifg=#FF0533 guibg=bg gui=bold
highlight Folded guifg=#001aa0 guibg=bg gui=NONE
highlight IncSearch guifg=#ffffff guibg=#0F7499 gui=NONE
highlight Search guifg=#252525 guibg=#69b0e7 gui=NONE
highlight MatchParen guifg=#FF0000 guibg=bg gui=bold
highlight ModeMsg guifg=fg guibg=bg gui=bold
highlight MoreMsg guifg=#4a4a4a guibg=bg gui=bold
highlight NonText guifg=#ffa078 guibg=bg gui=NONE
highlight Question guifg=#4a4a4a guibg=bg gui=bold
highlight SpecialKey guifg=#2c56fe guibg=bg gui=NONE
highlight Title guifg=#1a1a1a gui=bold
highlight Visual guibg=#CCB714 gui=NONE
highlight VisualNOS guifg=#403520 guibg=bg gui=bold,underline

" TODO
highlight link multiple_cursors_cursor cursor
highlight link multiple_cursors_visual Visual


highlight Todo guifg=fg guibg=#FFDB4D gui=bold
highlight Underlined guifg=#736e17 guibg=bg gui=underline

highlight MarkologyHLl guifg=orange guibg=black
highlight MarkologyHLu guifg=yellow guibg=black
highlight MarkologyHLo guifg=blue guibg=bg
highlight MarkologyHLm guifg=orange guibg=black
highlight MarkologyHLLine guifg=orange guibg=black

highlight ColorColumn guibg=#ffffff gui=NONE
highlight FoldColumn guifg=#656565 guibg=bg gui=NONE
highlight LineNr guifg=#aaaaaa guibg=#efefef gui=NONE
highlight CursorLineNr guifg=#990F5D guibg=#eeeeee gui=bold
highlight SignColumn guifg=#246629 guibg=#CCBEB8 gui=NONE
highlight StatusLine guifg=#0047CC guibg=#CCBEB8 gui=bold 
highlight StatusLineItem1 guifg=#CC912B guibg=#3D3837 gui=bold
highlight StatusLineItem2 guifg=#440047 guibg=#CCBEB8 gui=NONE
highlight StatusLineItem3 guifg=#664758 guibg=#CCBEB8 gui=NONE
highlight StatusLineNC guifg=#4C688F guibg=#CCBEB8 gui=bold
highlight VertSplit guifg=#504530 guibg=#CCBEB8 gui=NONE
highlight WildMenu guifg=#ffffff guibg=#0435fe gui=bold

highlight GitGutterAdd guifg=#CCBEB8  guibg=#0435fe gui=NONE
highlight GitGutterChange guifg=#CCBEB8  guibg=#0435fe gui=NONE
highlight GitGutterDelete guifg=#CCBEB8  guibg=#0435fe gui=NONE
highlight GitGutterChangeDelete guifg=#CCBEB8  guibg=#0435fe gui=NONE

highlight Conceal guifg=#00CC1B  guibg=black gui=NONE

highlight Comment guifg=#829982 guibg=bg gui=italic
highlight Exception guifg=#156a1e guibg=bg gui=bold
highlight Function guifg=#333333 guibg=bg gui=None
" highlight pythonDecorator guifg=#ababab guibg=bg gui=NONE
highlight Ignore guifg=bg guibg=bg gui=NONE
" highlight Repeat guifg=#1cd86e guibg=bg gui=bold
" highlight Conditional guifg=#df4430 guibg=bg gui=bold

highlight Operator guifg=#007585 guibg=bg gui=bold
highlight link pythonDecorator Operator
highlight Constant guifg=#66400F guibg=bg gui=NONE
highlight link Boolean Constant
highlight link Character Constant
highlight link Number Constant
highlight link String Constant
highlight Special guifg=#2c56fe guibg=bg gui=NONE
highlight link Debug Special
highlight link Delimiter Special
highlight link SpecialChar Special
highlight link SpecialComment Special
highlight link Tag Special
highlight PreProc guifg=#003099 guibg=bg gui=bold
highlight link Define PreProc
highlight link Include PreProc
highlight link PreCondit PreProc
highlight link Macro PreProc
highlight Statement guifg=#990F5D guibg=bg gui=bold
highlight link Repeat Statement
highlight link Conditional Statement
highlight link Keyword Statement
highlight link Identifier Statement
highlight link Label Statement
" in javascrit link from identifier to statement does not work 
highlight Identifier guifg=#990F5D guibg=bg gui=bold
highlight Type guifg=#6a5b15 guibg=bg gui=bold
highlight link StorageClass Type
highlight link Structure Type
highlight link Typedef Type

let g:grayish_white_my_Metadata = {
            \"Palette" : "black:white:gray50:red:purple:blue:light blue:green:yellow:orange:lavender:brown:goldenrod4:dodger blue:pink:light green:gray10:gray30:gray75:gray90",
            \"Last Change" : "2014 Apr 09",
            \"Name" : "earendel_my",
            \}
