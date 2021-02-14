" 
"   __  __     __     _____ __  __ ____   ____ 
"  |  \/  |_   \ \   / /_ _|  \/  |  _ \ / ___|
"  | |\/| | | | \ \ / / | || |\/| | |_) | |    
"  | |  | | |_| |\ V /  | || |  | |  _ <| |___ 
"  |_|  |_|\__, | \_/  |___|_|  |_|_| \_\\____|
"          |___/				      
"



" Detect whether vim-plug was installed when you invoked your vim

if empty(glob('~/.vim/autoload/plug.vim'))

  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC

endif


syntax on

let mapleader = " "

set number
set relativenumber
set wrap
set showcmd
set cursorline
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map J 5j
map K 5k
map <LEADER><CR> :nohlsearch<CR>

map sy :set nosplitright<CR>:vsplit<CR>
map su :set splitbelow<CR>:split<CR>
map si :set nosplitbelow<CR>:split<CR>
map so :set splitright<CR>:vsplit<CR>

map <LEADER><left>  <C-w>h
map <LEADER><down>  <C-w>j
map <LEADER><up>    <C-w>k
map <LEADER><right> <C-w>l
map <left> :vertical resize -5<CR> 
map <down> :res -5<CR> 
map <up> :res +5<CR>
map <right> :vertical resize +5<CR>

map tg :tabe<CR> 
map tu :-tabnext<CR>
map tn :+tabnext<CR>

map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

" Duplicate words
map <LEADER>fd /\(\<\w\+\>\)\_s*\1

" Spelling check with <space>sc
map <LEADER>sc :set spell!<CR>
noremap <C-x> ea<C-x>s
inoremap <C-x> <Esc>ea<C-x>s

" Press space twice to jump to the next '<++>' and edit it
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4i

" Clipboard
" set clipboard = unnamedplus
vnoremap Y "+y
nnoremap Y y$

"=====================
"|                   |
"|       Plugs       |
"|                   |
"=====================

call plug#begin('~/.vim/plugged')
" Clipboard
Plug 'junegunn/vim-peekaboo'
" Status BaR
Plug 'vim-airline/vim-airline'

" Colorscheme
Plug 'connorholyday/vim-snazzy'
Plug 'theniceboy/vim-deus'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
Plug 'Valloric/YouCompleteMe'

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'

" Changing Surroundings
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim'

" SublimeText or VS Code like
Plug 'mg979/vim-visual-multi'

" Snippets
Plug 'SirVer/ultisnips'

" VIM debugger vimspector
Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python --enable-go'}

call plug#end()


"====================
"|                  |
"|    PlugConfig    |
"|                  |
"====================

" ===
" === Colorscheme
" ===

set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark    " Setting dark mode
colorscheme deus
let g:deus_termcolors = 256

"let g:SnazzyTransparent = 1
"colorscheme snazzy
"
"let g:lightline = {
"\ 'colorscheme': 'snazzy',
"\ }
"
" ===
" === NERDTree-git
" ===

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" ===
" === NERDTree
" ===

map tt :NERDTreeToggle<CR>

let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'chromium'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" ===
" === Vimspector
" ===

let g:vimspector_enable_mappings = 'VISUAL_STUDIO'































































