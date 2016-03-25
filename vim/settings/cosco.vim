autocmd FileType c,cpp,css,java,javascript,perl,php,jade,matlab nmap <silent> ,; :call cosco#commaOrSemiColon()<CR>
autocmd FileType c,cpp,css,java,javascript,perl,php,jade,matlab inoremap <silent> ,; <ESC>:call cosco#commaOrSemiColon()"<CR>a
