" ===============
let g:yadr_disable_solarized_enhancements=1

" colorscheme base16-lfilho
" let g:hybrid_custom_term_colors = 1
" let g:hybrid_reduced_contrast = 1
colorscheme base16-eighties

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Fira\ Code\ h12
  else
    set macligatures
    set guifont=Fira\ Code:h12
  end
endif

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'
" Hide ~ for blank lines
hi NonText guifg=bg
let base16colorspace=256
set cursorline

" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800

" Resize splits when the window is resized
au VimResized * :wincmd =
