" Ron89/thesaurus_query.vim

let g:tq_map_keys=0
nnoremap <Leader>th :ThesaurusQueryReplaceCurrentWord<CR>
vnoremap <leader>th y:ThesaurusQueryReplace <C-r>"<CR>

" Ventilated prose
" https://github.com/olivertaylor/dotfiles/blob/master/vim/vimrc
" https://github.com/olivertaylor/text-utilities

" Convert sentence junctions
nnoremap gc. r.wvUb
nnoremap gc, r,wvub
nnoremap gc; r;wvub
nnoremap gc- s -<esc>wvub
xnoremap gc. s.<esc>wvUb
xnoremap gc, s,<esc>wvub
xnoremap gc; s;<esc>wvub

" Mappings/Commands for 'clause-break' & 'clause-join'
command! -range Break :'<,'>!clause-break
vnoremap gcb :Break<cr>
nnoremap gcb V:Break<cr>
command! -range Join :'<,'>!clause-join
vnoremap gcj :Join<cr>
nnoremap gcj V:Join<cr>
