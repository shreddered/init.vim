" =============================================================================
" This is my .vimrc 
" =============================================================================

" =============================================================================
" Options 
" =============================================================================

" colorscheme & syntax highlighting
syntax enable

" line numbers
set nu

" wildmenu (hints in the command mode)
set wildmenu
" meta files ignored
set wildignore=*.o,*~,*.swp

" Searching
" highlight results
set hlsearch
set incsearch
set smartcase

" =============================================================================
" Indents 
" =============================================================================
set tabstop=4
set shiftwidth=4
set softtabstop=4
" expand tab to spaces
set expandtab
set smarttab
" autoindent and smartindent
set ai
set si

" special settings for different filetypes
autocmd FileType cmake setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType proto setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType haskell setlocal tabstop=2 shiftwidth=2 softtabstop=2

" no bells on mac
set noerrorbells
set novisualbell
set vb t_vb=

" cool colors
if has("termguicolors")
    set termguicolors
endif

" =============================================================================
" Vunlde stuff
" =============================================================================

" required
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

" Plugins
call vundle#begin()

" required
Plugin 'VundleVim/Vundle.vim'

" source code tree
Plugin 'preservim/nerdtree'

" nice status line
Plugin 'itchyny/lightline.vim'

" c++ source code highlighting
Plugin 'bfrg/vim-cpp-modern'

Plugin 'godlygeek/tabular'

" nerd commenter
Plugin 'preservim/nerdcommenter'

" colorscheme
Plugin 'sainnhe/sonokai'

" YouCompleteMe
Plugin 'ycm-core/YouCompleteMe'

" haskell
Plugin 'neovimhaskell/haskell-vim'

call vundle#end()

" required
filetype plugin indent on

" =============================================================================
" Powerline tweaks
" =============================================================================

set laststatus=2
set noshowmode

" =============================================================================
" Colorscheme
" =============================================================================

set background=dark
colo sonokai

" =============================================================================
" NERD Tree tweaks
" =============================================================================

execute "set <M-t>=\et"

let g:NERDSpaceDelims = 1

" for mistakes
command W w
command Q q

" =============================================================================
" Mappings 
" =============================================================================

" =============================================================================
" Normal mode mappings 
" =============================================================================

" tab management 
map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <Tab> gt

" NERD Tree map
map <silent> <M-t> :NERDTreeToggle<cr>

" disable highlights on <leader><cr>
map <silent> <leader><cr> :noh<cr>

map <silent> <leader>gtd :YcmCompleter GoToDefinition<cr>
