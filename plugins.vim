filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"icons and status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'

"Autocomplete
" Plugin 'Valloric/YouCompleteMe'

"python plugins
" Plugin 'nvie/vim-flake8'
" Plugin 'tmhedberg/SimpylFold'
Plugin 'Vimjas/vim-python-pep8-indent'

"vcs
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive' " best Git wrapper of all time
Plugin 'airblade/vim-gitgutter'

"tmux
Plugin 'dense-analysis/ale'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'sheerun/vim-polyglot' " A collection of language packs for Vim.
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tomtom/tcomment_vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'editorconfig/editorconfig-vim' " Editor config for vim
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'haya14busa/incsearch.vim'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'christoomey/vim-tmux-navigator'

" Optional:
Plugin 'honza/vim-snippets'

" theme
Plugin 'haishanh/night-owl.vim'

call vundle#end()            " required
filetype plugin indent on    " required
