" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
  \ 'javascript' : expand('~/.yadr/vim/dict/javascript.dict')
\ }

" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <ESC>.
"inoremap <expr><ESC> pumvisible() ? neocomplete#close_popup() : "\<ESC>"
