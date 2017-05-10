" ================ Custom Settings: BEFORE ========================

source ~/.config/nvim/custom-settings/before/main.vim

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundles.vim
" Use Vundle plugin to manage all other plugins
" if filereadable(expand("~/.vim/vundles.vim"))
"   source ~/.vim/vundles.vim
" endif
" au BufNewFile,BufRead *.vundle set filetype=vim

" ================ Main Settings ========================
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
"
" ================ Custom Settings: AFTER ========================

source ~/.config/nvim/custom-settings/after/main.vim
