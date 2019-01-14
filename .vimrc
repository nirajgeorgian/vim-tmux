set nocompatible              										" be iMproved, required
set nowrap
set encoding=utf8
syntax enable
set backspace=indent,eol,start
set noerrorbells visualbell t_vb=									"disable error bell
let mapleader='\'																	"globally setting one leader key for custom mapping
set number
set tabstop=2
set shiftwidth=2
let g:solarized_termcolors=256
set t_CO=256 																			"set 256 colors in terminal vim





"----------source plugins.vim file here  ---------------------------"
so ~/.vim/plugins.vim 														"Source the Plugin bundle file

"-------------vim-visual-theme--------------------------------------"
set background=dark
colorscheme solarized



set autowriteall 																	"autowrite buffers when switiching buffers
set complete=.,w,b,u 															"loaded buffer and unloaded buffer
"Autoclose pair
let g:AutoPairsFlyMode = 1
set guifont=Hack\ Nerd\ Font:h16
"automatic tag creation
nmap <C-F8> :TagbarToggle<CR>
"jsnsid file
let g:jsx_ext_required = 0
"emmet settings
let g:user_emmet_leader_key='<Space>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}





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
let g:ctrlp_custom_ignore='node_modules\DS_Store\|git'





"--------------------Mappings--------------------"

nmap <Leader>ev :tabedit $MYVIMRC<cr>									"Make it eassy to edit Vimrc file
nmap <Leader><space> :nohlsearch<cr>									"Turn off the highlighting
nmap <C-x> :tabclose<cr>															"closing the current tab
nmap <C-n> :tabe<cr>																	"creating a new tab




" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1





"----------------------vim-airline---------------------"
let g:airline_solarized_bg='dark'
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





"--------------------vim-javascript-----------------"
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"




"---------------------nerdtree----------------------"
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




"--------------------Auto-Commands--------------------"
augroup autosourcing
	autocmd!
	"Automatically source the vimrc file on save
	autocmd BufWritePost .vimrc source %
augroup END
