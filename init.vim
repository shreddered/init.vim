" enumerate lines
set nu

" wildmenu
set wildmenu
set wildignore=*.o,*~,*.swp

" all about searching
set hlsearch
set incsearch
set smartcase

" indention
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

set ai
set si

" no bells on mac
set noerrorbells
set novisualbell
set vb t_vb=

" required
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" required
Plugin 'VundleVim/Vundle.vim'

" source code tree
Plugin 'preservim/nerdtree'

" nice status line
Plugin 'itchyny/lightline.vim'

" colorscheme
Plugin 'hzchirs/vim-material'

" c++ source code highlighting
Plugin 'bfrg/vim-cpp-modern'

Plugin 'godlygeek/tabular'

" nice commenter
Plugin 'preservim/nerdcommenter'

" also colorscheme
Plugin 'hardcoreplayers/oceanic-material'

call vundle#end()

" required
filetype plugin indent on

" powerline tweaking
set laststatus=2
set noshowmode

" colorscheme & syntax highlighting
syntax enable

" cool colors
if has("termguicolors")
    set termguicolors
endif

set background=dark
colo oceanic_material

let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

" shortcut for NERD
command Tree NERDTreeToggle

execute "set <M-t>=\et"
nmap <M-t> :Tree<Enter>

let g:NERDSpaceDelims = 1

" for mistakes
command W w
command Q q

" this is where magic happens

nmap <C-n> :tabnew<Enter>
nmap <Tab> gt

" special settings for different filetypes
autocmd FileType cmake setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType proto setlocal tabstop=2 shiftwidth=2 softtabstop=2
