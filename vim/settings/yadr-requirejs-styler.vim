" Will make it look like:
" define([
"     'one',
"     'two'
" ], function(
"     one,
"     two
" ){
function! <SID>StyleRequireJsImports()
    " First, join everything in one line
    normal /^\s*definev/\{J
    " Then, break each import into its own line
    normal 0f[af]if(a f)ikkkV:s/, /,\r/ge/funcjV:s/, /,\r/gevi(>kkVi[>
endfunction

command! StyleRequireJsImports call <SID>StyleRequireJsImports()

