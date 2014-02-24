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
    normal /^\s*define
    " Then, break each import into its own line
    normal 0f[a
endfunction

command! StyleRequireJsImports call <SID>StyleRequireJsImports()
