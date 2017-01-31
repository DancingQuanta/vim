""" Python """

setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix

" Folding in Python
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0

let python_highlight_all=1

syntax on

nnoremap <buffer> <F4> :exec '!python' shellescape(@%, 1)<cr>

