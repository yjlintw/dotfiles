" This loads after the yadr plugins so that plugin mappings can
" be overwritten.

if filereadable(expand("~/.yadr/vim/after/.vimrc.after"))
  source ~/.yadr/vim/after/.vimrc.after
endif

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

" ===============
" Marelo appearance customizations:
" ===============
let g:yadr_disable_solarized_enhancements=1

" colorscheme base16-marelo
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
colorscheme hybrid

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Fantasque\ Sans\ Mono\ Regular\ 17,Inconsolata\ XL\ 12,Inconsolata\ 15,Monaco\ 12
  else
    set guifont=Fantasque\ Sans\ Mono\ Regular:h17,Inconsolata\ XL:h17,Inconsolata:h20,Monaco:h17
  end
endif

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'
" Hide ~ for blank lines
hi NonText guifg=bg
