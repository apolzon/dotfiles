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
hi Type ctermfg=4 guifg=#065F8F
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
hi rubyRailsUserClass ctermfg=28 guifg=#BF4000
hi rubyRailsARAssociationMethod ctermfg=127 guifg=#870C2B
hi rubyRailsARMethod ctermfg=130 guifg=#870C2B
hi rubyRailsValidationMethod ctermfg=220 guifg=#70247D
hi rubyRailsControllerMethod ctermfg=91 guifg=#870C2B
hi rubyRailsFilterMethod ctermfg=214 guifg=#70247D
hi rubyRailsMethod ctermfg=55 guifg=#870C2B
hi rubyClass ctermfg=58 guifg=#A02EBF
hi rubyComment ctermfg=64 guifg=#068F76
hi rubyString ctermfg=22 guifg=#9A1CED
hi rubyConstant ctermfg=93 guifg=#BF4000
hi rubyInclude ctermfg=130 guifg=#BF4000
hi rubyFunction ctermfg=127 guifg=#70247D
hi rubySymbol ctermfg=22 guifg=#870C2B
hi rubyInstanceVariable ctermfg=12 guifg=#7D0000
hi rubyBlockParameter ctermfg=89 guifg=#870C2B
hi rubyControl ctermfg=130 guifg=#7D0000
hi rubyConditional ctermfg=93 guifg=#BF4000
hi rubyDefine ctermfg=58 guifg=#7D0000
hi rubyFunction ctermfg=28 guifg=#BF4000
hi rubyOperator ctermfg=130 guifg=#BF4000
hi rubyException ctermfg=130 guifg=#28211C

hi IndentGuidesOdd ctermbg=0
hi IndentGuidesEven ctermbg=236

" above is complete for 256-term
" below from bespin

