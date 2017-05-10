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
