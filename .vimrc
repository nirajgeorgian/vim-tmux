"---------------------- source plugins.vim and language dependency ----------------------" 
so ~/.vim/plugins.vim                                                                     " Source the Plugin bundle file
" so ~/.vim/languages/javascript.vim                                                      " javascript language dependency
" so ~/.vim/languages/go.vim                                                              " Golang language dependency





"---------------------- Core Vim ----------------------" 
syntax enable
filetype plugin indent on                                                                 " Enable filetype detection
filetype plugin on                                                                        " Enable autocomplete from filetype detection
set nocompatible                                                                          " Improved, required
set nowrap
set paste
set ttyfast                                                                               " Indicate fast terminal conn for faster redraw
set ttyscroll=3                                                                           " Speedup scrolling
set laststatus=2                                                                          " Show status line always
set spelllang=en_us                                                                       " Spell checking
set encoding=utf-8 nobomb                                                                 " Set default encoding to UTF-8
set autoread                                                                              " Automatically read changed files
set showcmd                                                                               " Show me what I'm typing
set fileformats=unix,dos,mac                                                              " Prefer Unix over Windows over OS 9 formats
set smartcase                                                                             " but not it begins with upper case
set completeopt=menu,menuone                                                              " Show popup menu, even if there is one entry
set pumheight=10                                                                          " Completion window max size
set nocursorcolumn                                                                        " Do not highlight column (speeds up highlighting)
set nocursorline                                                                          " Do not highlight cursor (speeds up highlighting)
set backspace=indent,eol,start
set noerrorbells visualbell t_vb=                                                         " Disable error bell
let mapleader=' '                                                                         " Globally setting one leader key for custom mapping
set number                                                                                " Let's activate line numbers
set tabstop=2
set shiftwidth=2
set t_CO=256                                                                              " Set 256 colors in terminal vim
set clipboard=unnamed
set showmatch                                                                             " Show the matching part of the pair for [] {} and ()
autocmd VimResized * :wincmd =                                                            " Automatically rebalance windows on vim resize
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>                                            " Zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>= :wincmd =<cr>
set autowriteall                                                                          " Autowrite buffers when switiching buffers
set complete=.,w,b,u                                                                      " Loaded buffer and unloaded buffer
set guifont=Hack\ Nerd\ Font:h16                                                          " Vim font
set hlsearch                                                                              " Search with highlight on





"---------------------- history / file handling ----------------------"
set history=999                                                                           " Increase history (default = 20)
set undolevels=999                                                                        " Moar undo (default=100)
set autoread                                                                              " reload files if changed externally
if has('persistent_undo')                                                                 " This enables us to undo files even if you exit Vim.
  set undofile
  set undodir=~/.config/vim/tmp/undo//
endif





"---------------------- backup and swap files ----------------------"
set nobackup                                                                              " Don't create annoying backup files
set nowritebackup
set noswapfile                                                                            " Don't use swapfile






let g:AutoPairsFlyMode = 1                                                                " Autoclose pair
nmap <C-F8> :TagbarToggle<CR>                                                             " Automatic tag creation





"---------------------- Visuals ----------------------"
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set cursorline                                                                            " Highlight current row
" set macligatures                                                                        " only work's in mac vim
colorscheme night-owl
set guioptions-=e                                                                         " We don't want gui tabs
set guioptions-=l                                                                         " Remove sidebar scroolbar
set guioptions-=L
set guioptions-=r
set guioptions-=R
hi LineNr ctermbg=bg                                                                      " Set lineno background
set foldcolumn=2                                                                          " Fold column to two
hi foldcolumn ctermbg=bg                                                                  " Fake sidespace and lineno color
hi vertsplit ctermbg=bg ctermfg=bg                                                        " Get rid of ugly split borders





"---------------------- Enable folding ----------------------"
set foldmethod=indent
set foldlevel=99
nnoremap <space> za





"---------------------- Split Managing ----------------------"
set splitbelow
set splitright
nmap <C-j> <C-W><C-j>
nmap <C-k> <c-w><c-k>
nmap <C-l> <C-W><C-l>
nmap <C-h> <C-W><C-h>
nnoremap <C-a>- :split<enter>
nnoremap <C-a>\ :vsplit<enter>
nnoremap <C-q> :quit<enter>






"---------------------- Mappings ----------------------
nmap <Leader>ev :tabedit $MYVIMRC<cr>                                                     " Make it eassy to edit Vimrc file
nmap <C-x> :tabclose<cr>                                                                  " Closing the current tab
" quickfix window with <leader>a
map <C-n> :cnext<CR>                                                                      " Jump to next error with Ctrl-n
map <C-m> :cprevious<CR>                                                                  " Jump to previous error with Ctrl-m
nnoremap <leader>a :cclose<CR>





"---------------------- plugins ----------------------"

"/
"/ ---------------------- NERDTree ----------------------
"/
let NERDTreeHijackNetrw=0
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
nmap <C-1> :NERDTreeToggle<cr>                                                            " Make easier to NERDTree toggle
let g:NERDTreeDirArrowExpandable = ''                                                     " Remove nerdtree arrow
let g:NERDTreeDirArrowCollapsible = ''
let NERDTreeAutoDeleteBuffer = 1                                                          " Automatically delete the buffer of the file you just deleted with NerdTree:
let NERDTreeShowHidden=1                                                                  " show hidden files in nerdtree
let NERDTreeShowBookmarks=1                                                               " Display NERDTree Bookmarks
" let NERDTreeMapOpenInTab='<ENTER>'
autocmd
\ bufenter * if
\ (winnr("$") == 1 && exists("b:NERDTree") && 
\ b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1                                                     " Automatically open nerdtree if folder is found
autocmd
\ VimEnter * if argc() == 1 &&
\ isdirectory(argv()[0]) && !exists("s:std_in") | exe
\ 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0]
\ | endif
autocmd 
\ VimEnter * if argc() == 0 && !exists("s:std_in") 
\ | NERDTree | endif

"/
"/ ---------------------- CtrlP ----------------------
"/
nmap <C-r> :CtrlPBufTag<cr>                                                               " Buffertag's for fast accessing
nmap <C-f> :CtrlPMRUFiles<cr>                                                             " Most recently used files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip                                                  " MacOSX/Linux"
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|venv\|__pycache__\|.pyc\$\|.swp'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:10'                     " Show ctrlp from top to bottom with 10 results
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"

"/
"/ ---------------------- incsearch ----------------------
"/
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
nnoremap <Leader><Leader> :<C-u>nohlsearch<CR>

"/
"/ ---------------------- youcompleteme ----------------------
"/
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"/
"/ ---------------------- WebDevIcons ----------------------
"/
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1                                                     " Ddding the flags to NERDTree
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusConcealBrackets = 1
let g:NERDTreeGitStatusShowClean = 1                                                      " - default: 0

"/
"/ ---------------------- vim-airline ----------------------
"/
"-------------------------------------------"
let g:airline_theme='papercolor'
let g:webdevicons_enable_airline_tabline = 1                                              " Adding to vim-airline's tabline
let g:webdevicons_enable_airline_statusline = 1                                           " Adding to vim-airline's statusline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"---------------------- unicode symbols ----------------------"
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
"---------------------- airline symbols ----------------------"
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''





"---------------ale----------------------------"
" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'eslint'],
\		'css': ['stylelint'],
\		'less': ['stylelint'],
\   'scss': ['stylelint'],
\   'vue': ['eslint']
\}
let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'typescript': ['eslint', 'prettier'],
\    'vue': ['eslint'],
\		 'css': ['stylelint'],
\		 'less': ['stylelint'],
\    'scss': ['stylelint', 'prettier'],
\    'html': ['prettier']
\}
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
nmap <silent> <C-1> <Plug>(ale_previous_wrap)
nmap <silent> <C-2> <Plug>(ale_next_wrap
let g:ale_fix_on_save = 1





"------------- language dev --------------"
let python_highlight_all=1
"Python Indentation
"it would be nice to set tag files by the active virtualenv here
":set tags=~/mytags "tags for ctags and taglist
"omnicomplete
autocmd FileType python set omnifunc=pythoncomplete#Complete

"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
" Keep indentation level from previous line:
autocmd FileType python set autoindent

"Flagging Unnecessary Whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/





"---------------------- Auto-Commands ----------------------"
augroup autosourcing
  autocmd!
  "Automatically source the vimrc file on save
  autocmd BufWritePost .vimrc source %
augroup END
