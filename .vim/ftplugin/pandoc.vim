" Syntastic

let g:syntastic_filetype_map = { "pandoc": "markdown" }
let g:syntastic_markdown_checkers = ['proselint', 'language_check']
let g:syntastic_markdown_language_check_args = '--language=en-GB'
