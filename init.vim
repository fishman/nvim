"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/timebomb/.config/nvim/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/timebomb/.config/nvim')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

call dein#add('reedes/vim-pencil')

call dein#add('othree/yajs.vim')
call dein#add('mxw/vim-jsx')
call dein#add('HerringtonDarkholme/yats.vim')

call dein#add('jceb/vim-orgmode')
call dein#add('mattn/calendar-vim')
call dein#add('vim-scripts/SyntaxRange')
call dein#add('vim-scripts/utl.vim')
call dein#add('chrisbra/NrrwRgn')
call dein#add('Matt-Deacalion/vim-systemd-syntax')
call dein#add('kassio/neoterm')

call dein#add('godlygeek/tabular')
call dein#add('plasticboy/vim-markdown')
" call dein#add('rhysd/nyaovim-markdown-preview')

call dein#add('airblade/vim-gitgutter')
call dein#add('tpope/vim-speeddating')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-rhubarb')
call dein#add('tpope/vim-endwise')
call dein#add('tpope/vim-vinegar')

call dein#add('tpope/vim-rails')
call dein#add('tpope/vim-eunuch')
call dein#add('vim-ruby/vim-ruby')
call dein#add('jgdavey/vim-blockle')

call dein#add('majutsushi/tagbar')

call dein#add('scrooloose/nerdtree')
call dein#add('vim-scripts/ReplaceWithRegister')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

call dein#add('Shougo/deoplete.nvim')
call dein#add('zchee/deoplete-clang')
call dein#add('mhartington/deoplete-typescript')
call dein#add('zchee/deoplete-jedi')
" call dein#add('carlitux/deoplete-ternjs')
" call dein#add('ternjs/tern_for_vim')

call dein#add('vhakulinen/neovim-intellij-complete-deoplete')

call dein#add('morhetz/gruvbox')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
call dein#add('pbogut/fzf-mru.vim', { 'depends': 'fzf.vim' })

call dein#add('neomake/neomake')
call dein#add('vim-airline/vim-airline')
call dein#add('neovim/node-host', { 'build': 'npm install' })
call dein#add('vimlab/mdown.vim', { 'build': 'npm install' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
"
map Q gq
                        " do not use Ex-mode, use Q for formatting
set history=400         " lines of Ex commands, search history ...
set browsedir=buffer    " use the directory of the related buffer
" set clipboard+=unnamed  " use register '*' for all y, d, c, p ops
set isk+=$,%,#          " none of these should be word dividers
set autoread            " auto read when a file is changed outside
set confirm             " raise a confirm dialog for changed buffer
set fenc=utf-8          " character encoding for file of the buffer
set fencs=ucs-bom,utf-8,gb18030,gbk,gb2312,cp936
set timeoutlen=200      " Time to wait after ESC (default causes an annoying delay)
filetype plugin indent on      " enable filetype plugin

if $TERM != "linux" && $TERM != "screen"  " && $TERM != 'rxvt-unicode'
  set mouse=a           " except screen & SecureCRT's linux terminal
endif
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=80        " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.

set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set nostartofline       " Do not jump to first character with page commands.
set scrolloff=7         " minimal screen lines above/below cursor
set wildmenu            " :h and press <Tab> to see what happens
set wig=.git,.svn,.hg,.bzr
set wig+=*.o,*.pyc
set wig+=*.jpg,*.tif,*.gif,*.tiff,*.png
set wig+=build,*.beam
set wig+=.DS_Store,*.dmg
set wig+=*.aux,*.out,*.toc,*.idx,*.fls,*.synctex.gz
set wig+=*.ilg,*.ind,*.nlo,*.nlo,*.blg,*.bbl
set wig+=*.fdb_latexmk
set wig+=*.pdf,*.dvi,*.ps,*.djvu

                        " type of file that will not in wildmenu
set cmdheight=2         " use 1 screen lines for command-line
"set nolazyredraw        " redraw while executing macros (for qbuf)
set lazyredraw        " redraw while executing macros (for qbuf)
set hidden              " allow to change buffer without saving
set backspace=2         " make backspace work normal
set whichwrap+=<,>,h,l  " allow backspace and cursor keys to wrap
set shortmess=atI       " shorten to avoid 'press a key' prompt
set report=0            " tell us when anything is changed via :...
set fillchars=vert:\ ,stl:\ ,stlnc:\
                        " make splitters between windows be blank
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.class,.lib,.exp,.pch,.res
set matchtime=2         " how many tenths of a second to blink
set ignorecase
set smartcase           " the case of normal letters is ignored except when upper is used
set hlsearch            " highlight all searched for phrases
set incsearch           " highlight where the typed pattern matches
set inccommand=nosplit
set nu
set rnu
"set novisualbell        " use visual bell instead of beeping
set visualbell
set t_vb=
set noerrorbells        " do not make noise
if has("multi_byte_encoding")
  set listchars=tab:»\ ,trail:·,extends:>,precedes:<,eol:¬
else
  set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$
endif
                        " how :set list show
" set list
set magic               " set magic on
set completeopt=menu    " use popup menu to show possible completions
" set foldenable          " enable folding, I find it very useful
set nofen               " enable folding, I find it very useful
"set foldmethod=syntax   " manual, marker, syntax, try set foldcolumn=2
set foldmethod=manual   " manual, marker, syntax, try set foldcolumn=2
set laststatus=2        " always show the status line
set ffs=unix,dos,mac    " behaves good under both linux/windows
nmap <leader>fd :se ff=dos<cr>
nmap <leader>fu :se ff=unix<cr>
set background=dark

" Markdown
let g:vim_markdown_math = 1

let g:deoplete#enable_at_startup = 1

let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'gruvbox'

let g:deoplete#sources#clang#libclang_path ='/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/include/clang'

let g:neomake_c_lint_maker = {
      \ 'exe': 'lint',
      \ 'args': ['--option', 'x'],
      \ 'errorformat': '%f:%l:%c: %m',
      \ }

autocmd BufWritePost *.py,*.js,*.rs Neomake
let g:neomake_javascript_enabled_makers = ['eslint']

" Use deoplete.
let g:deoplete#enable_at_startup = 1
"

let mapleader = " "     " set mapleader, then <leader> will be ,
let g:mapleader = " "
let maplocalleader = ","     " set mapleader, then <leader> will be ,

map <right> :bn<cr>
map <left> :bp<cr>
nnoremap <up> gk
nnoremap <down> gj

map <leader>e :e! $MYVIMRC<cr>
map <silent> <leader>fed :e $MYVIMRC<cr>
au! BufWritePost init.vim source $MYVIMRC

nmap <silent> <leader>fs :w<cr>
map <silent> <leader>s :w!<cr>
nmap <F1> :w!<cr>
imap <F1> <C-O>:w!<cr>

map <silent> \ :nohl<cr>

nmap <F3> :NERDTreeToggle<cr>
imap <F3> <C-O>:NERDTreeToggle<cr>
nmap <silent> \\ :execute 'NERDTreeToggle ' . fnameescape(getcwd())<CR>
nmap <silent> <leader>nf :NERDTreeFind<CR>
" let g:NERDTreeHijackNetrw = 0

nmap <F4> :TagbarToggle<cr>
imap <F4> <C-O>:TagbarToggle<cr>

let g:fzf_command_prefix = 'Fzf'
noremap <f8> :FzfAg<CR>
noremap <silent> <leader>p/ :FzfAg<CR>
noremap <silent> <leader>t :FzfAg<CR>
noremap <silent> <leader>pf :FzfAg<CR>
noremap <silent> <leader>fr :FZFMru<CR>
noremap <silent> <leader>bs :FzfBuffers<CR>
noremap <silent> <leader>tS :FzfColors<CR>

map <leader>bd :Bclose<cr>
map <leader>bw :bw<cr>

nnoremap <C-h> <C-w>h " only C-h does not work.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" neoterm
let g:neoterm_position = 'horizontal'
let g:neoterm_automap_keys = ',tt'

nnoremap <silent> <f10> :TREPLSendFile<cr>
nnoremap <silent> <f9> :TREPLSendLine<cr>
vnoremap <silent> <f9> :TREPLSendSelection<cr>

" run set test lib
nnoremap <silent> ,rt :call neoterm#test#run('all')<cr>
nnoremap <silent> ,rf :call neoterm#test#run('file')<cr>
nnoremap <silent> ,rn :call neoterm#test#run('current')<cr>
nnoremap <silent> ,rr :call neoterm#test#rerun()<cr>

" Useful maps
" hide/close terminal
nnoremap <silent> ,th :call neoterm#close()<cr>
" clear terminal
nnoremap <silent> ,tl :call neoterm#clear()<cr>
" kills the current job (send a <c-c>)
nnoremap <silent> ,tc :call neoterm#kill()<cr>

" Rails commands
command! Troutes :T rake routes
command! -nargs=+ Troute :T rake routes | grep <args>
command! Tmigrate :T rake db:migrate

" Git commands
command! -nargs=+ Tg :T git <args><Paste>

""""""""""""
" tern
""""""""""""
" Use deoplete.
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete

"Add extra filetypes
let g:tern#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ ]

augroup development
    autocmd!

    autocmd Filetype org nmap <buffer> <A-Left>  :hello<cr>
    autocmd Filetype org nmap <buffer> <A-Right> :hello<cr>
augroup END

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
  " autocmd FileType markdown,mkd call pencil#init()
  "                           \ | call lexical#init()
  "                           \ | call litecorrect#init()
  "                           \ | call textobj#quote#init()
  "                           \ | call textobj#sentence#init()
" augroup END


" SuperTab like snippets' behavior.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
 \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 " concealcursor=nv
endif

	" Enable snipMate compatibility feature.
	" let g:neosnippet#enable_snipmate_compatibility = 1
" use jk for esc
imap jk <Esc>

" remove the windows ^M
noremap <leader>dos mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" remove indenting on empty lines
map <F2> :%s/\s*$//g<cr>:noh<cr>''

" switch to current dir
map <leader>cd :cd %:p:h<cr>

colorscheme gruvbox

" don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()

fu! <SID>BufcloseCloseIt()
  let l:currentBufNum = bufnr("%")
  let l:alternateBufNum = bufnr("#")

  if buflisted(l:alternateBufNum)
    buffer #
  else
    bnext
  endif
  if bufnr("%") == l:currentBufNum
    enew
  endif
  if buflisted(l:currentBufNum)
    execute "bdelete! ".l:currentBufNum
  endif
endf
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editing Mappings Etc: {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" remap Vim 0
map 0 ^
map <A-i> i <esc>r

" edit text in quotes
nmap X ci"

" move a line of text using control
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
" }}}
"

" if has('nvim')
"   tnoremap <c-a> <c-\><c-n>
"   " nmap <c-+> <c-w>+
" endif
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" Hack to get C-h working in neovim
" nmap <BS> <C-W>h
tnoremap <Esc> <C-\><C-n>
