" These keys are easier to type than the default set
" We exclude semicolon because it's hard to read and
" i and l are too easy to mistake for each other slowing
" down recognition. The home keys and the immediate keys
" accessible by middle fingers are available
let g:EasyMotion_keys='asdfjkoweriop'
nmap <leader><ESC> <Plug>(easymotion-bd-w)
nmap <leader><S-ESC> <Plug>(easymotion-bd-b)
