set nocompatible              										" be iMproved, required
set nowrap
filetype plugin indent on       " ... and enable filetype detection
filetype plugin on              " enable autocomplete from filetype detection
set ttyfast                     " Indicate fast terminal conn for faster redraw
set ttyscroll=3                 " Speedup scrolling
set laststatus=2                " Show status line always
set encoding=utf-8              " Set default encoding to UTF-8
set autoread                    " Automatically read changed files
set showcmd                     " Show me what I'm typing
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set smartcase                   " ... but not it begins with upper case
set completeopt=menu,menuone    " Show popup menu, even if there is one entry
set pumheight=10                " Completion window max size
set nocursorcolumn              " Do not highlight column (speeds up highlighting)
set nocursorline                " Do not highlight cursor (speeds up highlighting)
syntax enable
set backspace=indent,eol,start
set noerrorbells visualbell t_vb=									"disable error bell
let mapleader='\'																	"globally setting one leader key for custom mapping
set number
set tabstop=2
set shiftwidth=2
set t_CO=256 																			"set 256 colors in terminal vim





" This enables us to undo files even if you exit Vim.
if has('persistent_undo')
  set undofile
  set undodir=~/.config/vim/tmp/undo//
endif





" CTRLP for finding and replacing
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux"
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'





"----------source plugins.vim file here  ---------------------------"
so ~/.vim/plugins.vim 														"Source the Plugin bundle file





"-----------source language specific settings ----------------------"
so ~/.vim/languages/javascript.vim
so ~/.vim/languages/go.vim




"-------------vim-visual-theme--------------------------------------"
colorscheme onedark





set autowriteall 																	"autowrite buffers when switiching buffers
set complete=.,w,b,u 															"loaded buffer and unloaded buffer
"Autoclose pair
let g:AutoPairsFlyMode = 1
set guifont=Hack\ Nerd\ Font:h16
"automatic tag creation
nmap <C-F8> :TagbarToggle<CR>





"--------------------Visuals--------------------"
set guioptions-=e
set guioptions-=l																	"remove sidebar scroolbar
set guioptions-=L
set guioptions-=r
set guioptions-=R
hi LineNr ctermbg=bg                              "set lineno background
set foldcolumn=2                                  "fold column to two
hi foldcolumn ctermbg=bg													"fake sidespace and lineno color
hi vertsplit ctermbg=bg ctermfg=bg								"Get rid of ugly split borders






"--------------------GUI Search--------------------"
set hlsearch
set incsearch




"--------------------Split Managing--------------------"
set splitbelow
set splitright
nmap <C-j> <C-W><C-j>
nmap <C-k> <c-w><c-k>
nmap <C-l> <C-W><C-l>
nmap <C-h> <C-W><C-h>
nmap <C-\> :NERDTreeToggle<cr> 												"Make easier to NERDTree toggle
let NERDTreeHijackNetrw=0
nmap <C-R> :CtrlPBufTag<cr>														"Buffertag's for fast accessing
nmap <C-f> :CtrlPMRUFiles<cr>													"most recently used files





"--------------------Mappings--------------------"

nmap <Leader>ev :tabedit $MYVIMRC<cr>									"Make it eassy to edit Vimrc file
nmap <Leader><Leader> :nohlsearch<cr>									"Turn off the highlighting
nmap <C-x> :tabclose<cr>															"closing the current tab
" Jump to next error with Ctrl-n and previous error with Ctrl-m. Close the
" quickfix window with <leader>a
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>





" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
let NERDTreeShowHidden=1





"----------------------vim-airline---------------------"
let g:airline_theme='papercolor'
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	    let g:airline_symbols = {}
		endif
" unicode symbols
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
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''





"---------------------nerdtree----------------------"
"Mappings for git status of modified files
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
"Close vim if only nerd tree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"Automatically open nerdtree if folder is found
au VimEnter NERD_tree_1 enew | execute 'NERDTree '.argv()[0]





"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif





"--------------------Auto-Commands--------------------"
augroup autosourcing
	autocmd!
	"Automatically source the vimrc file on save
	autocmd BufWritePost .vimrc source %
augroup END
