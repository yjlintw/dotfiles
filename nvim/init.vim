" =========================================
" ======== Custom Settings: BEFORE ========
" =========================================

source ~/.config/nvim/custom-settings/before/main.vim

" ======================================
" ======== Plugins Installation ========
" ======================================

source ~/.config/nvim/plugins/main.vim

" ========================================================
" ======== Main Settings & Plugins Configuration  ========
" ========================================================
"
" let vimSettings = '~/.config/nvim/settings'
" let uname = system("uname -s")
"
" for fpath in split(globpath(vimSettings, '*.vim'), '\n')
"
"   if (fpath == expand(vimSettings) . "/yadr-keymap-mac.vim") && uname[:4] ==? "linux"
"     continue " skip mac mappings for linux
"   endif
"
"   if (fpath == expand(vimSettings) . "/yadr-keymap-linux.vim") && uname[:4] !=? "linux"
"     continue " skip linux mappings for mac
"   endif
"
"   exe 'source' fpath
" endfor

" ========================================
" ======== Custom Settings: AFTER ========
" ========================================

source ~/.config/nvim/custom-settings/after/main.vim
