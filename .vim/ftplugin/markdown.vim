" Settings for pandoc markdown files, ensure that vim-pandoc and
" vim-pandoc-syntax are installed!

setlocal encoding=utf-8  " The encoding displayed.
setlocal fileencoding=utf-8  " The encoding written to file.
setlocal backspace=indent,eol,start
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix
setlocal spell
setlocal wrap

" Pandoc
let g:pandoc#keyboard#use_default_mappings=0
let g:pandoc#keyboard#display_motions=0

"let g:pandoc#syntax#conceal#urls = 1
" Interferes with follow-markdown-link

let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="

" Citation.vim
runtime shared/citation.vim

" Prose
runtime shared/prose.vim
