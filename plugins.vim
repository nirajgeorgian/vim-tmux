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
Plugin 'Valloric/YouCompleteMe'
"Vim plugin for golang
"Plugin 'fatih/vim-go'

Plugin 'sheerun/vim-polyglot' " A collection of language packs for Vim.
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'vim-syntastic/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-fugitive' " best Git wrapper of all time
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tomtom/tcomment_vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'editorconfig/editorconfig-vim' " Editor config for vim
Plugin 'jparise/vim-graphql'
Plugin 'kien/ctrlp.vim'
Plugin 'ekalinin/Dockerfile.vim'

"C and CPP configuratyion
Plugin 'rhysd/vim-clang-format'

" Javascript configuration
Plugin 'pangloss/vim-javascript'
Plugin 'leshill/vim-json'
Plugin 'mxw/vim-jsx'
Plugin 'stephpy/vim-yaml'

call vundle#end()            " required
filetype plugin indent on    " required
