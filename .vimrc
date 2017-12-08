if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" dein: {{{
if dein#load_state(expand('~/.vim/dein'))
  call dein#begin(expand('~/.vim/dein')) " plugins' root path

  " Let dein manage dein
  call dein#add('Shougo/dein.vim')
  "call dein#add('Shougo/vimproc.vim', {
  "    \ 'build': {
  "    \     'windows': 'tools\\update-dll-mingw',
  "    \     'cygwin': 'make -f make_cygwin.mak',
  "    \     'mac': 'make -f make_mac.mak',
  "    \     'linux': 'make',
  "    \     'unix': 'gmake',
  "    \    },
  "    \ })
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('zirrostig/vim-schlepp')
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('SirVer/ultisnips')
  call dein#add('honza/vim-snippets')
  "call dein#add('itchyny/calendar.vim')
  call dein#add('godlygeek/tabular', {'lazy': 1, 'on_ft': ['markdown','pandoc','restructuredtext']})
  call dein#add('rafaqz/citation.vim', {'lazy': 1, 'on_ft': ['markdown','pandoc','restructuredtext']})
  call dein#add('vim-pandoc/vim-pandoc')", {'lazy': 1, 'on_ft': ['markdown','pandoc']}
  call dein#add('vim-pandoc/vim-pandoc-syntax')", {'lazy': 1, 'on_ft': ['markdown','pandoc']}
  call dein#add('vim-pandoc/vim-pandoc-after')", {'lazy': 1, 'on_ft': ['markdown','pandoc']}
  call dein#add('dhruvasagar/vim-table-mode')", {'lazy': 1, 'on_ft': ['markdown','pandoc']}
  call dein#add('Rykka/riv.vim')
  call dein#add('lervag/vimtex')
  call dein#add('waiting-for-dev/vim-www')
  call dein#add('python-mode/python-mode', {'lazy': 1, 'on_ft': ['python']})
  call dein#add('chrisbra/csv.vim', {'lazy': 1, 'on_ft': ['csv']})
  call dein#add('wannesm/wmgraphviz.vim', {'lazy': 1, 'on_ft': ['dot']})
  call dein#add('nathangrigg/vim-beancount')
  call dein#add('vim-syntastic/syntastic')
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"}}}

" hard tab
inoremap <S-Tab> <C-V><Tab>
" Get out of insert mode
inoremap kj <Esc>

" Nagivate and normal mode
inoremap <Left>  <Esc>j
inoremap <Right> <Esc>l
inoremap <Up>    <Esc>i
inoremap <Down>  <Esc>k

" Schlepp dragging plugin
"vmap <unique> <up>    <Plug>SchleppUp
"vmap <unique> <down>  <Plug>SchleppDown
"vmap <unique> <left>  <Plug>SchleppLeft
"vmap <unique> <right> <Plug>SchleppRight

" Insert newline in normal mode
"nmap <S-Enter> O<Esc>
"nmap <CR> o<Esc>

"split navigations
nnoremap <C-J> <C-W><C-J> " move to the split below
nnoremap <C-K> <C-W><C-K> " move to the split above
nnoremap <C-L> <C-W><C-L> " move to the split to the right
nnoremap <C-H> <C-W><C-H> " move to the split to the left
"}}}

" Settings: {{{
"set backup
"set backupdir=~/.vim/backups
"set undofile
"set undodir=~/.vim/undo
set directory=~/.vim/tmp
set tags=./tags;

" Working in cygwin makes me forget to convert dos to unix...
set ff=unix

set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
set backspace=indent,eol,start
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=0
set autoindent

" Enable folding
set foldmethod=syntax
set foldlevel=99

set gcr=a:block

" mode aware cursors
set gcr+=o:hor50-Cursor
set gcr+=n:Cursor
set gcr+=i-ci-sm:InsertCursor
set gcr+=r-cr:ReplaceCursor-hor20
set gcr+=c:CommandCursor
set gcr+=v-ve:VisualCursor

set gcr+=a:blinkon0

hi InsertCursor  ctermfg=15 guifg=#fdf6e3 ctermbg=37  guibg=#2aa198
hi VisualCursor  ctermfg=15 guifg=#fdf6e3 ctermbg=125 guibg=#d33682
hi ReplaceCursor ctermfg=15 guifg=#fdf6e3 ctermbg=65  guibg=#dc322f
hi CommandCursor ctermfg=15 guifg=#fdf6e3 ctermbg=166 guibg=#cb4b16

set scrolloff=5
set showmode
set showcmd
set hidden
set relativenumber
set number
set ttyfast
set hlsearch

highlight BadWhitespace ctermbg=red guibg=darkred
highlight SpecialKey ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set wrap
"set listchars=tab:▸\ ,eol:¬
set listchars=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:•
"set list

au BufReadPost * syntax match nonascii "[^\u0000-\u007F]"

" Automatically leave insert mode after 'updatetime' milliseconds of inaction
au CursorHoldI * stopinsert
" }}}

" Web

let g:www_urls = {
  \ 'vim' : 'http://www.vim.org',
  \ }
let g:www_engines = {
  \ 'youtube' : 'https://www.youtube.com/results?search_query=',
  \ 'google'  : 'https://google.co.uk/search?q=',
  \ 'scholar' : 'https://scholar.google.co.uk/scholar?q=',
  \ 'library' : 'http://bath-ac-primo.hosted.exlibrisgroup.com/primo_library/libweb/action/search.do?fn=search&ct=search&initialSearch=true&mode=Basic&tab=local&indx=1&dum=true&srt=rank&vid=44BAT_VU1&frbg=&tb=t&vl%28freeText0%29='
  \ }
let g:www_default_search_engine = 'google'
let g:www_shortcut_engines = {
  \ 'google': ['Google', '<leader>g', 'Googlec', '<leader>gc'],
  \ 'scholar': ['Scholar', '<leader>s', 'Scholarc', '<leader>sc'],
  \ 'library': ['Library', '<leader>l', 'Libraryc', '<leader>lc']
  \}
let g:www_sessions = {
  \ 'dev' : ['vim', 'http://stackoverflow.com'],
  \ }
":Wsession vim

" Ultisnips
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
" <c-tab> doesn't work in gnome-terminal
let g:UltiSnipsListSnippets="<C-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:snips_author="Andrew Tolmie"

" Move a snippet to a new file or append to an existing file
:command! -bang -range -nargs=1 -complete=file MoveWrite  <line1>,<line2>write<bang> <args> | <line1>,<line2>delete _
:command! -bang -range -nargs=1 -complete=file MoveAppend <line1>,<line2>write<bang> >> <args> | <line1>,<line2>delete _

" Unite.vim

nmap <leader>u [unite]
noremap [unite] <NOP>

let g:unite_source_grep_default_opts =
  \ '-i --smart-case --nogroup --nocolor --ignore-dir={.git, .cabal-sandbox, .stack-work}'

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
    " Overwrite settings.

    " Play nice with supertab
    let b:SuperTabDisabled=1
    " Enable navigation with i and j in normal mode
    nmap <buffer> i   <Plug>(unite_select_next_line)
    nmap <buffer> k   <Plug>(unite_select_previous_line)
    " Entering and leaving insert mode 
    nmap <buffer> d     <Plug>(unite_insert_enter)	
    nmap <buffer> f     <Plug>(unite_insert_enter)	
    imap <buffer> jk    <Plug>(unite_insert_leave)

    imap <buffer><expr> j unite#smart_map('j', '')
    imap <buffer> <TAB>     <Plug>(unite_select_next_line)
    imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)
    imap <buffer> '     <Plug>(unite_quick_match_default_action)
    nmap <buffer> '     <Plug>(unite_quick_match_default_action)
    imap <buffer><expr> x
                \ unite#smart_map('x', "\<Plug>(unite_quick_match_choose_action)")
    nmap <buffer> x     <Plug>(unite_quick_match_choose_action)
    nmap <buffer> <C-z>     <Plug>(unite_toggle_transpose_window)
    imap <buffer> <C-z>     <Plug>(unite_toggle_transpose_window)
    imap <buffer> <C-y>     <Plug>(unite_narrowing_path)
    nmap <buffer> <C-y>     <Plug>(unite_narrowing_path)
    nmap <buffer> <C-e>     <Plug>(unite_toggle_auto_preview)
    imap <buffer> <C-e>     <Plug>(unite_toggle_auto_preview)
    nmap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
    imap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
    nnoremap <silent><buffer><expr> l
                \ unite#smart_map('l', unite#do_action('default'))

    let unite = unite#get_current_unite()
    if unite.profile_name ==# 'search'
        nnoremap <silent><buffer><expr> r     unite#do_action('replace')
    else
        nnoremap <silent><buffer><expr> r     unite#do_action('rename')
    endif

    nnoremap <silent><buffer><expr> cd     unite#do_action('lcd')
    nnoremap <buffer><expr> S      unite#mappings#set_current_filters(
                \ empty(unite#mappings#get_current_filters()) ?
                \ ['sorter_reverse'] : [])

    " Runs "split" action by <C-s>.
    imap <silent><buffer><expr> <C-s>     unite#do_action('split')
endfunction

"" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
"let g:syntastic_debug=3

" Fix syntastic error jumping
function! <SID>LocationPrevious()
  try
    lprev
  catch /^Vim\%((\a\+)\)\=:E553/
    llast
  endtry
endfunction

function! <SID>LocationNext()
  try
    lnext
  catch /^Vim\%((\a\+)\)\=:E553/
    lfirst
  endtry
endfunction

nnoremap <silent> <Plug>LocationPrevious    :<C-u>exe 'call <SID>LocationPrevious()'<CR>
nnoremap <silent> <Plug>LocationNext        :<C-u>exe 'call <SID>LocationNext()'<CR>
nmap <silent> [e  <Plug>LocationPrevious
nmap <silent> ]e  <Plug>LocationNext

" Actions in cygwin
if has("win32unix")
  "set shellxquote = "("
  "set shellxescape = "\""
	" Clip to clipboard
	:command -range Clip <line1>,<line2>w !cat > /dev/clipboard
  "vnoremap <silent> <leader>c :w !cat > /dev/clipboard<CR>
  vnoremap <silent> <leader>c :Clip<CR>

	" Paste clipboard in
	function! Getclip()
		let reg_save = @@
		let @@ = system('getclip')
		"Much like Putclip(), using the /dev/clipboard device to access to the
		"native Windows clipboard for Cygwin 1.7.13 and above. It provides the
		"added benefit of supporting utf-8 characters which getclip currently does
		"not. Based again on a tip from John Beckett, use the following:
		let @@ = join(readfile('/dev/clipboard'), "\n")
		setlocal paste
		exe 'normal v'
		setlocal nopaste
		let @@ = reg_save
	endfunction

	nnoremap <silent> <leader>v :call Getclip()<CR>
  " Netrw
	let g:netrw_browsex_viewer= "cygstart"
endif

syntax match nonascii "[^\x00-\x7F]"
highlight nonascii guibg=Red ctermbg=1 term=standout
"au BufReadPost * syntax match nonascii "[^\u0000-\u007F]"
