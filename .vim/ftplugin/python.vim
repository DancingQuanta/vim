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

let g:ultisnips_python_style='google'

nnoremap <buffer> <F4> :exec '!python' shellescape(@%, 1)<cr>

" ALE

let g:ale_python_pylint_executable = 'python3'
let g:ale_python_pylint_options = '-rcfile $HOME/.pylintrc'

let g:ale_fixers = {
\   'python': ['autopep8', 'isort', 'remove_trailing_lines'],
\}
