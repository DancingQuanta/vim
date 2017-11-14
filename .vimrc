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
  call dein#add('tpope/vim-fugitive')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('zirrostig/vim-schlepp')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/unite-outline')
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
  call dein#add('junegunn/goyo.vim', {'lazy': 1, 'on_ft': ['markdown','pandoc','restructuredtext']})
  call dein#add('Ron89/thesaurus_query.vim', {'lazy': 1, 'on_ft': ['markdown','pandoc','restructuredtext']})
  call dein#add('waiting-for-dev/vim-www')
  call dein#add('python-mode/python-mode', {'lazy': 1, 'on_ft': ['python']})
  call dein#add('chrisbra/csv.vim', {'lazy': 1, 'on_ft': ['csv']})
  call dein#add('wannesm/wmgraphviz.vim', {'lazy': 1, 'on_ft': ['dot']})
  call dein#add('nathangrigg/vim-beancount')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('jamessan/vim-gnupg')
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

" === ErgoVim key mappings === {{{

" http://www.hxa.name/articles/content/ergovim-key-mappings_hxa7241_2010.html

" --- normal mode ---

" leave unchanged: ! and !!

" --- tab and pane ---
noremap " :tabe<CR> "Open new tab
noremap £ <C-w>gf "Open and edit grabbed filename
noremap $ <C-w>n "split pane, make new buffer, (n) lines high 
noremap % <C-w>f "split pane, and edit grabbed filename
noremap ^ <C-w>o "close other panes
noremap & <C-w><S-w> "go to above wrapped pane, or (n)th pane
noremap * <C-w><C-w> "go to below wrapped pane, or (n)th pane 

" leave unchanged: (
" leave unchanged: )
noremap 0 <Nop>
noremap - <C-o> " Jump
noremap _ <C-i> " Back
" leave unchanged: =
noremap + <Nop>

" --- edit ---
noremap q .
noremap <S-q> @:
noremap <C-q> <Nop>
noremap w ~
noremap <S-w> g~
" leave unchanged: <C-w>
noremap e >>
noremap <S-e> <<
noremap <C-e> <Nop>
noremap r daw
noremap <S-r> ciw
noremap <C-r> "_daw
noremap t x
noremap <S-t> r
noremap <C-t> <Nop>

noremap a v
noremap <S-a> <S-v>
noremap <C-a> <C-v>
noremap s g^i
noremap <S-s> <S-o>
noremap <C-s> <S-o><Esc>
noremap d g$a
noremap <S-d> o
noremap <C-d> o<Esc>
noremap f i
noremap <S-f> a
noremap <C-f> <S-r>
" leave unchanged: g
noremap <S-g> <Nop>
noremap <C-g> <Nop>

noremap z u
noremap <S-z> <C-r>
noremap <C-z> <Nop>
noremap x d
noremap <S-x> c
noremap <C-x> "_d
noremap c y
noremap <S-c> <Nop>
" leave unchanged: <C-c>
noremap v <S-p>
noremap <S-v> p
noremap <C-v> <Nop>

noremap xx dd
noremap <S-x><S-x> cc
noremap <C-x><C-x> "_dd
noremap cc yy

onoremap d i
onoremap f a

" --- move ---
noremap y %
noremap <S-y> `.
noremap <C-y> <Bar>
noremap u <S-b>
noremap <S-u> b
noremap <C-u> gE
noremap i gk
noremap <S-i> <C-b>
noremap <C-i> <C-y>
noremap o <S-w>
noremap <S-o> w
noremap <C-o> <S-e>
noremap p g$
noremap <S-p> g$
noremap <C-p> $
" leave unchanged: [
" leave unchanged: {
" leave unchanged: ]
" leave unchanged: }

noremap h g^
noremap <S-h> g0
noremap <C-h> ^
noremap j h
noremap <S-j> <S-h>
noremap <C-j> gg
noremap k gj
noremap <S-k> <C-f>
noremap <C-k> <C-e>
" leave unchanged: l
" leave unchanged: <S-l>
noremap <C-l> <S-g>

" leave unchanged: :
"y
noremap ; :
" Register key
noremap ' "
" leave unchanged: "
" leave unchanged: \
noremap <Bar> <Nop>

" --- search ---
" leave unchanged: n
" leave unchanged: <S-n>
noremap <C-n> :nohlsearch<CR>
noremap m f
noremap <S-m> <S-f>
noremap <C-m> ;

noremap , g*
noremap < g#
noremap << <Nop>
noremap . *
noremap > #
noremap >> <Nop>
" leave unchanged: /
" leave unchanged: ?

" --- record ---
noremap ~ q
noremap ` @
noremap `` @@

" --- mark ---
noremap <S-Space> m
noremap <C-Space> m`
noremap <Space> `
noremap <Space><Space> ``

" --- special keys ---
noremap <BS> "_<S-x>
noremap <S-BS> "_db
noremap <Del> "_x
noremap <S-Del> "_de

noremap <Home> g0
noremap <S-Home> <Home>
" leave unchanged: <C-Home>
noremap <End> g$
noremap <S-End> <End>
" leave unchanged: <C-End>

" leave unchanged: <PageUp>
noremap <S-PageUp> <S-h>
" leave unchanged: <C-PageUp>
" leave unchanged: <PageDown>
noremap <S-PageDown> <S-l>
" leave unchanged: <C-PageDown>

noremap <Up> gk
noremap <S-Up> <Up>
noremap <C-Up> <C-y>
noremap <Down> gj
noremap <S-Down> <Down>
noremap <C-Down> <C-e>
" leave unchanged: <Left>
" leave unchanged: <S-Left>
noremap <C-Left> <S-b>
" leave unchanged: <Right>
" leave unchanged: <S-Right>
noremap <C-Right> <S-w>

" --- g prefixeds ---
noremap gm gd
noremap g<S-m> gD
noremap gj <S-j>
" leave unchanged: g<S-j>
noremap g: q:
noremap g/ q/

" --- other ---
noremap b z
noremap <S-b> <Nop>
noremap <C-b> <Nop>
noremap <D-P> <Nop>
noremap <F2> :set ro! <Bar> :setl noma!<CR>
noremap <F3> :set list!<CR>
noremap <F6> :set ff=unix<CR>
noremap <F7> :set ff=dos<CR>


" --- visual mode ---

" leave unchanged: !
" leave unchanged: =

vnoremap q <Nop>
vnoremap <S-q> <Nop>
vnoremap <C-q> <Nop>
" inherit: w
vnoremap <S-w> <Nop>
" inherit: <C-w>
vnoremap e >
vnoremap <S-e> <
vnoremap <C-e> <Nop>
vnoremap r <Nop>
vnoremap <S-r> <Nop>
vnoremap <C-r> <Nop>
vnoremap t <Nop>
vnoremap <S-t> <Nop>
" inherit: <C-t>

" leave unchanged: a
" leave unchanged: <S-a>
" leave unchanged: <C-a>
vnoremap s <Nop>
vnoremap <S-s> I
vnoremap <C-s> A
vnoremap d i
vnoremap <S-d> <Nop>
vnoremap <C-d> <Nop>
vnoremap f a
vnoremap <S-f> <Nop>
vnoremap <C-f> <Nop>
" inherit: g
vnoremap <S-g> <Nop>
vnoremap <C-g> <Nop>

vnoremap z <Nop>
vnoremap <S-z> <Nop>
vnoremap <C-z> <Nop>
" inherit: x
" inherit: <S-x>
" inherit: <C-x>
" inherit: c
vnoremap <S-c> <Nop>
" inherit: <C-c>
vnoremap v <Esc>pgv"_d
vnoremap <S-v> <S-p>
vnoremap <C-v> <Nop>

vunmap xx
vunmap <S-x><S-x>
vunmap <C-x><C-x>
vunmap cc

" leave unchanged: :
vnoremap ; _:

vnoremap / y/<C-R>"<CR>
vnoremap ? y?<C-R>"<CR>

vnoremap " o
vnoremap <Bar> <S-o>

vnoremap ~ <Nop>
vnoremap ` <Nop>
vunmap ``

vnoremap <S-Del> v_<Del>

" leave unchanged: gq
" leave unchanged: gv
" inherit: gj
" inherit: g shft-j


" --- insert mode ---

" --- edit
" leave unchanged: <C-@>
inoremap <C-q> <C-a>
inoremap <C-w> <Esc>~a
" leave unchanged: <C-e>
inoremap <C-r> <C-y>
inoremap <C-t> <Nop>
inoremap <C-a> <C-]>
" leave unchanged: <C-s>
inoremap <C-d> <C-n>
inoremap <C-f> <C-o>
" leave unchanged: <C-g>
inoremap <C-z> <C-u> " delete all inserted chars in current line
inoremap <C-x> <Nop>
inoremap <C-c> <Nop>
inoremap <C-v> <C-r>
" leave unchanged: <C-[>
inoremap <C-]> <C-c>

" --- move, etc.
inoremap <C-_> <Esc><C-o>a
inoremap <C-y> <Esc>`.a
inoremap <C-b> <C-g>u
inoremap <C-CR> <C-x>

" --- other
inoremap <C-u> <Nop>
" leave unchanged: <C-i> -- fixed to <Tab>
inoremap <C-o> <Nop>
inoremap <C-p> <Nop>
inoremap <C-h> <Nop>
inoremap <C-n> <Nop>
" leave unchanged: <C-m> -- fixed to <CR>
" leave unchanged: <C-\>
" leave unchanged: <C-^>

" --- special keys
" leave unchanged <BS>
inoremap <S-BS> <C-w>
" leave unchanged <Del>
inoremap <S-Del> <Esc>l"_dei

inoremap <Home> <Esc>g^a
inoremap <S-Home> <Home>
" leave unchanged <C-Home>
inoremap <End> <Esc>g$i
inoremap <S-End> <End>
" leave unchanged <C-End>

" leave unchanged <PageUp>
inoremap <S-PageUp> <Esc><S-h>a
" leave unchanged <C-PageUp>
" leave unchanged <PageDown>
inoremap <S-PageDown> <Esc><S-l>a
" leave unchanged <C-PageDown>

inoremap <Up> <Esc>gka
inoremap <S-Up> <Up>
inoremap <C-Up> <Esc><C-y>a
inoremap <Down> <Esc>gja
inoremap <S-Down> <Down>
inoremap <C-Down> <Esc><C-e>a
" leave unchanged <Left>
" leave unchanged <S-Left>
inoremap <C-Left> <Esc><S-b>i
" leave unchanged <Right>
" leave unchanged <S-Right>
inoremap <C-Right> <Esc><S-w>a

" --- command-line mode ---

" --- pattern complete
cnoremap <C-q> <C-l>
cnoremap <C-w> <C-a>
cnoremap <C-e> <C-n>
cnoremap <C-r> <C-p>
"cunmap <C-r><C-r>
cnoremap <C-t> <C-d>

" --- other
cnoremap <C-o> <C-v>

cnoremap <C-a> <C-]>

cnoremap <C-v> <C-r>
cnoremap <C-v><C-v> <C-r><C-r>

cnoremap <C-h> <C-f>

cnoremap <S-BS> <C-w>

command -nargs=+ -bang -bar -complete=file Tabview tabe | view <args> | setl noma

" Changes
" Visual mode
" Map ; to v_: changed to _:
"
"}}}

" Mappings: {{{
"noremap <space> <leader>
"noremap <space><space> <leader><leader>
"nmap S :w!<CR>

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

"" Statueline with git: {{{
"" from https://github.com/spf13/spf13-vim/blob/master/.vimrc
"if has('statusline')
	"set laststatus=2
	"" Broken down into easily includeable segments
	"set statusline=%<%f\    " Filename
	"set statusline+=%w%h%m%r " Options
	"set statusline+=%{fugitive#statusline()} "  Git Hotness
	"set statusline+=\ [%{&ff}/%Y]            " filetype
	"set statusline+=\ %<%F          " current dir
	"set statusline+=%#warningmsg#
	"set statusline+=%*
	"set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
"endif
""}}}

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
