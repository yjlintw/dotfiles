set incsearch       " Find the next match as we type the search
set hlsearch        " Hilight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
set wrapscan        " Search wrap the file
set showmatch

" Using Perl/Python regex style by default when searching
nnoremap / /\v
vnoremap / /\v

" Keep search matches in the middle of the window.
" FIXME: Not working right now due conflict with IndexedSearch plugin
nnoremap n nzzzv
nnoremap N Nzzzv

" Same when jumping around
" FIXME: Don't know why it's not working (doesn't seem to be conflicting with
" anything)
nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz
