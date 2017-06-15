" Citation.vim

let g:citation_vim_bibtex_file="~/OneDrive/papers/library.bib"
let g:citation_vim_mode="bibtex"

" Use Zotero for bibtex management
let g:citation_vim_mode='zotero'
let g:citation_vim_zotero_path='~/AppData/Roaming/Zotero/Zotero/Profiles/qr6r9hc4.default/zotero'

let g:citation_vim_cache_path='~/.vim/tmp/'

"" Insert citation
nnoremap <silent>[unite]c :<C-u>Unite -buffer-name=citation -start-insert -default-action=append citation/key<cr>
" Open citation file
nnoremap <silent>[unite]co :<C-u>Unite -input=<C-R><C-W> -default-action=start -force-immediately citation/file<cr>
" Open citation url
nnoremap <silent>[unite]cu :<C-u>Unite -input=<C-R><C-W> -default-action=start -force-immediately citation/url<cr>
" Browse file folder of a citation
nnoremap <silent>[unite]cf :<C-u>Unite -input=<C-R><C-W> -default-action=file -force-immediately citation/file<cr>
" To view all citation information from a citation under the cursor
nnoremap <silent>[unite]ci :<C-u>Unite -input=<C-R><C-W> -default-action=preview -force-immediately citation/combined<cr>
" To preview, append, yank any other citation data from unite:
nnoremap <silent>[unite]cp :<C-u>Unite -buffer-name=citation -default-action=append -auto-preview citation/XXXXXX<cr>
"" Fulltext searching
" Search for the word under the cursor
nnoremap <silent>[unite]cs :<C-u>Unite -default-action=yank citation/key:<C-R><C-W><cr>
" Selected words in visual mode (notice that spaces have to be escaped) :
vnoremap <silent>[unite]cs :<C-u>exec "Unite -default-action=start citation/key:" . escape(@*,' ') <cr>
" Type search terms in the prompt:
nnoremap <silent>[unite]cx :<C-u>exec "Unite -default-action=start citation/key:" . escape(input('Search Key : '),' ') <cr>
