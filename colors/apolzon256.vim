set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Apolzon256"

hi Normal ctermfg=4 guifg=#baae9e guibg=#28211c gui=NONE
hi Type ctermfg=4 guifg=#937121 guibg=NONE gui=NONE
hi Visual ctermbg=4 ctermfg=202 guifg=NONE guibg=#4c4a49 gui=NONE
hi LineNr ctermfg=8 guifg=#71685d guibg=#28211c gui=NONE
hi IncSearch ctermbg=4 ctermfg=202 guifg=NONE guibg=#41434a gui=NONE
hi Search ctermbg=6 ctermfg=208 guifg=NONE guibg=#41434a gui=NONE
hi Statement ctermfg=130 guifg=#5ea6ea guibg=NONE gui=NONE
hi MatchParen ctermfg=130 guifg=#5ea6ea guibg=NONE gui=NONE
hi Conditional ctermfg=130 guifg=#5ea6ea guibg=NONE gui=NONE
hi Define ctermfg=130 guifg=#5ea6ea guibg=NONE gui=NONE
hi Keyword ctermfg=130 guifg=#5ea6ea guibg=NONE gui=NONE
hi Operator ctermfg=130 guifg=#5ea6ea guibg=NONE gui=NONE
hi PreProc ctermfg=130 guifg=#5ea6ea guibg=NONE gui=NONE
hi Tag ctermfg=130 guifg=#5ea6ea guibg=NONE gui=NONE
hi VertSplit ctermfg=4
hi rubyClass ctermfg=58 guifg=#5ea6ea guibg=NONE gui=NONE
hi rubyComment ctermfg=64
hi rubyRailsUserClass ctermfg=28 guifg=#9b859d guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=127 guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsValidationMethod ctermfg=220
hi rubyRailsControllerMethod ctermfg=91
hi rubyRailsFilterMethod ctermfg=214
hi rubyRailsMethod ctermfg=55
hi rubyConstant ctermfg=93 guifg=#9b859d guibg=NONE gui=NONE
hi rubyInclude ctermfg=130 guifg=#5ea6ea guibg=NONE gui=NONE
hi rubyFunction ctermfg=127 guifg=#937121 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=130 guifg=#dad085 guibg=NONE gui=NONE
hi rubySymbol ctermfg=22 guifg=#cf6a4c guibg=NONE gui=NONE
hi rubyString ctermfg=22
hi rubyInstanceVariable ctermfg=12 guifg=#7587a6 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=89 guifg=#7587a6 guibg=NONE gui=NONE
hi rubyControl ctermfg=130 guifg=#5ea6ea guibg=NONE gui=NONE
hi rubyConditional ctermfg=93
hi rubyDefine ctermfg=58
hi rubyFunction ctermfg=28
hi rubyOperator ctermfg=130 guifg=#5ea6ea guibg=NONE gui=NONE
hi rubyException ctermfg=130 guifg=#5ea6ea guibg=NONE gui=NONE
hi yamlKey ctermfg=130 guifg=#5ea6ea guibg=NONE gui=NONE

" above is complete
" below from bespin

hi IndentGuidesOdd guibg=white ctermbg=8
hi IndentGuidesEven guibg=green ctermbg=8

hi Cursor guifg=NONE guibg=#a7a7a7 gui=NONE
hi CursorLine guifg=NONE guibg=#2e2823 gui=NONE
hi CursorColumn guifg=NONE guibg=#2e2823 gui=NONE
hi VertSplit guifg=#443c35 guibg=#443c35 gui=NONE
hi StatusLine guifg=#baae9e guibg=#443c35 gui=bold
hi StatusLineNC guifg=#baae9e guibg=#443c35 gui=NONE
hi Pmenu guifg=#937121 guibg=NONE gui=NONE
hi PmenuSel guifg=NONE guibg=#4c4a49 gui=NONE
hi Directory guifg=#cf6a4c guibg=NONE gui=NONE
hi Folded guifg=#666666 guibg=#28211c gui=NONE

hi Boolean guifg=#cf6a4c guibg=NONE gui=NONE
hi Character guifg=#cf6a4c guibg=NONE gui=NONE
hi Comment guifg=#666666 guibg=NONE gui=italic
hi Constant guifg=#cf6a4c guibg=NONE gui=NONE
hi ErrorMsg guifg=NONE guibg=NONE gui=NONE
hi WarningMsg guifg=NONE guibg=NONE gui=NONE
hi Float guifg=#cf6a4c guibg=NONE gui=NONE
hi Function guifg=#937121 guibg=NONE gui=NONE
hi Identifier guifg=#f9ee98 guibg=NONE gui=NONE
hi Label guifg=#54be0d guibg=NONE gui=NONE
hi NonText guifg=#5e5955 guibg=#2e2823 gui=NONE
hi Number guifg=#cf6a4c guibg=NONE gui=NONE
hi Special guifg=#baae9e guibg=NONE gui=NONE
hi SpecialKey guifg=#5e5955 guibg=#2e2823 gui=NONE
hi StorageClass guifg=#f9ee98 guibg=NONE gui=NONE
hi String guifg=#54be0d guibg=NONE gui=NONE
hi Title guifg=#baae9e guibg=NONE gui=bold
hi Todo guifg=#666666 guibg=NONE gui=inverse,bold,italic
hi Underlined guifg=NONE guibg=NONE gui=underline
hi rubyInterpolationDelimiter guifg=NONE guibg=NONE gui=NONE
hi rubyStringDelimiter guifg=#54be0d guibg=NONE gui=NONE
hi rubyGlobalVariable guifg=#7587a6 guibg=NONE gui=NONE
hi rubyRegexp guifg=#e9c062 guibg=NONE gui=NONE
hi rubyRegexpDelimiter guifg=#e9c062 guibg=NONE gui=NONE
hi rubyEscape guifg=#cf6a4c guibg=NONE gui=NONE
hi rubyClassVariable guifg=#7587a6 guibg=NONE gui=NONE
hi rubyPseudoVariable guifg=#7587a6 guibg=NONE gui=NONE
hi rubyRailsRenderMethod guifg=#dad085 guibg=NONE gui=NONE
hi rubyRailsMethod guifg=#dad085 guibg=NONE gui=NONE
hi erubyDelimiter guifg=NONE guibg=NONE gui=NONE
hi erubyRailsMethod guifg=#dad085 guibg=NONE gui=NONE
hi htmlTag guifg=#ac885b guibg=NONE gui=NONE
hi htmlEndTag guifg=#ac885b guibg=NONE gui=NONE
hi htmlTagName guifg=#ac885b guibg=NONE gui=NONE
hi htmlArg guifg=#ac885b guibg=NONE gui=NONE
hi htmlSpecialChar guifg=#cf6a4c guibg=NONE gui=NONE
hi javaScriptFunction guifg=#f9ee98 guibg=NONE gui=NONE
hi javaScriptRailsFunction guifg=#dad085 guibg=NONE gui=NONE
hi javaScriptBraces guifg=NONE guibg=NONE gui=NONE
hi yamlAnchor guifg=#7587a6 guibg=NONE gui=NONE
hi yamlAlias guifg=#7587a6 guibg=NONE gui=NONE
hi yamlDocumentHeader guifg=#54be0d guibg=NONE gui=NONE
hi cssURL guifg=#7587a6 guibg=NONE gui=NONE
hi cssFunctionName guifg=#dad085 guibg=NONE gui=NONE
hi cssColor guifg=#cf6a4c guibg=NONE gui=NONE
hi cssPseudoClassId guifg=#937121 guibg=NONE gui=NONE
hi cssClassName guifg=#937121 guibg=NONE gui=NONE
hi cssValueLength guifg=#cf6a4c guibg=NONE gui=NONE
hi cssCommonAttr guifg=#cf6a4c guibg=NONE gui=NONE
hi cssBraces guifg=NONE guibg=NONE gui=NONE

