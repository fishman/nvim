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

call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-rhubarb')
call dein#add('tpope/vim-vinegar')
call dein#add('tpope/vim-rails')
call dein#add('vim-ruby/vim-ruby')
call dein#add('majutsushi/tagbar')

call dein#add('scrooloose/nerdtree')
call dein#add('vim-scripts/ReplaceWithRegister')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

call dein#add('Shougo/deoplete.nvim')
call dein#add('zchee/deoplete-clang')
call dein#add('zchee/deoplete-jedi')


call dein#add('morhetz/gruvbox')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
call dein#add('pbogut/fzf-mru.vim', { 'depends': 'fzf.vim' })

call dein#add('neomake/neomake')
call dein#add('vim-airline/vim-airline')


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
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
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


" Use deoplete.
let g:deoplete#enable_at_startup = 1
"

let mapleader = ","     " set mapleader, then <leader> will be ,
let g:mapleader = ","
let maplocalleader = ","     " set mapleader, then <leader> will be ,

map <leader>e :e! $MYVIMRC<cr>
au! BufWritePost init.vim source $MYVIMRC

map <silent> <leader>s :w!<cr>
nmap <F1> :w!<cr>
imap <F1> <C-O>:w!<cr>

nmap <F3> :NERDTreeToggle<cr>
imap <F3> <C-O>:NERDTreeToggle<cr>

nmap <F4> :TagbarToggle<cr>
imap <F4> <C-O>:TagbarToggle<cr>

let g:fzf_command_prefix = 'Fzf'
noremap <f8> :FzfAg<CR>
noremap <silent> <leader>t :FzfAg<CR>
noremap <silent> <leader>r :FZFMru<CR>

map <leader>bc :Bclose<cr>
map <leader>bw :bw<cr>

nnoremap <C-h> <C-w>h " only C-h does not work.
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" use jk for esc
imap jk <Esc>

" remove the windows ^M
noremap <leader>dos mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" remove indenting on empty lines
map <F2> :%s/\s*$//g<cr>:noh<cr>''

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
