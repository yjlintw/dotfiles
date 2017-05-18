function! GetVisual()
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&
  normal! ""gvy
  let selection = getreg('"')
  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save
  return selection
endfunction

"grep the current word using K (mnemonic Kurrent)
nnoremap <silent> K :Rg <cword><CR>

"grep visual selection
vnoremap K :<C-U>execute 'Rg "' . GetVisual() . '"'<CR>

"grep current word up to the next exclamation point using ,K
nnoremap <leader>K viwf!:<C-U>execute 'Rg "' . GetVisual() . '"'<CR>

"grep for 'def foo' (for Ruby)
nnoremap <silent> <leader>gd :Rg 'def <cword>'<CR>

" File search mappings:
" open up a ripgrep line, with a quote started for the search
"
" Mnemonic: *F*ind in *A*ll files. Or *F*ind *A*nywhere.
nnoremap <leader>fa :Rg --smart-case ""<left>
" Mnemonic: *F*ind *F*iles.
nnoremap <leader>ff :Rg --smart-case --files ""<Left>
" Mnemonic: *F*ind usages of *T*his file
nnoremap <leader>ft :exec "Rg " . expand("%:t:r")<CR>

set wrapscan        " Search wrap the file
set showmatch

" Using Perl/Python regex style by default when searching
nnoremap / /\v
vnoremap / /\v

" Keep search matches in the middle of the window.
let g:indexed_search_center = 1

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz
