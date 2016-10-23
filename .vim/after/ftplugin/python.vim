""" Python """

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

" Folding in Python
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0

let python_highlight_all=1

syntax on

nnoremap <buffer> <F4> :exec '!python' shellescape(@%, 1)<cr>

