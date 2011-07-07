set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Apolzon256"

hi PreProc guifg=#DE1D3D
hi Label guifg=#DE1D3D
hi Error guibg=#F2FA19 guifg=#800015
hi ErrorMsg guibg=#F2FA19 guifg=#800015
hi Normal ctermfg=4 guibg=#28211C guifg=#065F8F
hi Constant ctermfg=4 guifg=#9A1CED
hi Type ctermfg=4 guifg=#4268C2
hi Visual ctermbg=4 ctermfg=202 guibg=#207996 guifg=#FA7319
hi LineNr ctermfg=8 guifg=#71685d
hi IncSearch ctermbg=4 ctermfg=202 guibg=#F2FA19 guifg=#330080
hi Search ctermbg=6 ctermfg=208 guibg=#F2FA19 guifg=#330080
hi Statement ctermfg=130 guifg=#F07911
hi MatchParen ctermfg=130 guifg=#800015 guibg=#28211C
hi Conditional ctermfg=130 guifg=#F07911
hi Define ctermfg=130 guifg=#DE1D3D
hi Keyword ctermfg=130 guifg=#DE1D3D
hi Operator ctermfg=130 guifg=#DE1D3D
hi PreProc ctermfg=130 guifg=#DE1D3D
hi Tag ctermfg=130 guifg=white
hi VertSplit ctermfg=4 guifg=#207996
hi Comment guifg=#068F76
hi rubyClass ctermfg=58
hi rubyComment ctermfg=64
hi rubyRailsUserClass ctermfg=28
hi rubyRailsARAssociationMethod ctermfg=127
hi rubyRailsValidationMethod ctermfg=220
hi rubyRailsControllerMethod ctermfg=91
hi rubyRailsFilterMethod ctermfg=214
hi rubyRailsMethod ctermfg=55
hi rubyConstant ctermfg=93
hi rubyInclude ctermfg=130
hi rubyFunction ctermfg=127
hi rubyRailsARMethod ctermfg=130
hi rubySymbol ctermfg=22
hi rubyString ctermfg=22
hi rubyInstanceVariable ctermfg=12
hi rubyBlockParameter ctermfg=89
hi rubyControl ctermfg=130
hi rubyConditional ctermfg=93
hi rubyDefine ctermfg=58
hi rubyFunction ctermfg=28
hi rubyOperator ctermfg=130
hi rubyException ctermfg=130
hi yamlKey ctermfg=130

hi IndentGuidesOdd ctermbg=0
hi IndentGuidesEven ctermbg=236

" above is complete for 256-term
" below from bespin

