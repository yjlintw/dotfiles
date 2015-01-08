call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#custom#source('file_mru', 'max_candidates', 5)
call unite#custom#source('file_rec/async', 'max_candidates', 15)
call unite#custom#source('file_mru,file_rec,file_rec/async,grep,locate',
  \ 'ignore_pattern', join(['\.git/', 'tmp/', 'bundle/', 'node_modules/'], '\|'))

let g:unite_source_history_yank_enable = 1
nnoremap <leader>yh :<C-u>Unite -buffer-name=yank history/yank<cr>

let g:unite_prompt = '» '

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
    nnoremap <silent><buffer><expr> <C-s>     unite#do_action('split')
    nnoremap <silent><buffer><expr> <C-v>     unite#do_action('vsplit')
    inoremap <silent><buffer><expr> <C-s>     unite#do_action('split')
    inoremap <silent><buffer><expr> <C-v>     unite#do_action('vsplit')
    nnoremap <buffer> <C-j>     <Down>
    nnoremap <buffer> <C-k>     <Up>
    inoremap <buffer> <C-j>     <Down>
    inoremap <buffer> <C-k>     <Up>
endfunction

nnoremap ,ur :UniteResume<CR>

nnoremap ,t :Unite -start-insert -buffer-name=files file_mru file_rec/async:!<CR>
vnoremap ,t "zy:<C-u>Unite -input=<C-R>z -start-insert -buffer-name=files file_mru file_rec/async:!<CR>

"
" Buffer listing/switching (mnemonic: Unite Buffers)
"
nnoremap ,ub :Unite -no-start-insert -buffer-name=buffers -quick-match buffer<CR>
vnoremap ,ub "zy:<C-u>Unite -input=<C-R>z -buffer-name=buffers buffer<CR>

"
" Grep buffer search (mnemonic: Unite Grep Buffer)
"
nnoremap ,ugb :Unite grep:$buffers -no-start-insert -buffer-name=buffer_search<CR>
vnoremap ,ugb "zy:<C-u>Unite grep:$buffers -no-start-insert -buffer-name=buffer_search -input=<C-R>z<CR>

"
" Grep file search (mnemonic: Unite Grep File)
"
if executable('ag')
    " Use ag in unite grep source.
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nocolor --nogroup --hidden'
    let g:unite_source_grep_recursive_opt = ''
elseif executable('ggrep')
    " Use gnu grep in unite grep source.
    let g:unite_source_grep_command = 'ggrep'
endif
nnoremap ,ugf :Unite -no-start-insert grep:.<CR>
vnoremap ,ugf "zy:<C-u>Unite -no-start-insert grep:.::<C-R>z<CR>
