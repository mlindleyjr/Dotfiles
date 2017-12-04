" ==================================================================================================
" Plugins
" ==================================================================================================

call plug#begin()

" load theme
Plug 'morhetz/gruvbox'
" Plug 'cocopon/iceberg.vim'
" Plug 'sonph/onehalf', { 'rtp': 'vim/' }
" Plug 'whatyouhide/vim-gotham'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'wolverian/minimal'

" syntax highlighting
Plug 'hail2u/vim-css3-syntax'
Plug 'mxw/vim-jsx'
Plug 'sheerun/vim-polyglot'
Plug 'valloric/matchtagalways'

" text manipulation
Plug 'alvan/vim-closetag'
Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'svermeulen/vim-easyclip'

" movement
Plug 'Konfekt/vim-smartbraces'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dietsche/vim-lastplace'
Plug 'easymotion/vim-easymotion'
Plug 'matze/vim-move'

" interface
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'szw/vim-maximizer'
" Plug 'vim-airline/vim-airline'
Plug 'wesQ3/vim-windowswap'
Plug 'yggdroot/indentline'
Plug 'yssl/QFEnter'
Plug 'mhinz/vim-startify'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
" Plug 'bling/vim-bufferline'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'epeli/slimux'
Plug 'qpkorr/vim-bufkill'
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" background
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'w0rp/ale'

" el popo
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-sleuth'

" autocomplete
" Plug 'zchee/deoplete-jedi'
Plug 'artur-shaik/vim-javacomplete2'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Notes
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'

" Python
Plug 'fisadev/vim-isort'

" add plugins to &runtimepath
call plug#end()
