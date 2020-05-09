set nu

set wildmenu
set wildignore=*.o,*~

set hlsearch
set incsearch

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab

set noerrorbells
set novisualbell
set vb t_vb=

set nocompatible
filetype off

set ai
set si

set laststatus=2
set noshowmode

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" required
Plugin 'VundleVim/Vundle.vim'

Plugin 'preservim/nerdtree'

Plugin 'itchyny/lightline.vim'

" colorscheme
Plugin 'hzchirs/vim-material'

" c++ source code highlighting
Plugin 'bfrg/vim-cpp-modern'

"Plugin 'vim-scripts/Conque-GDB'

call vundle#end()

filetype plugin indent on

" colorscheme & syntax highlighting
syntax enable

if has("termguicolors")
    set termguicolors
endif

let g:material_style='oceanic'
set background=dark
colo vim-material

set path+=:pwd/include

let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

command Tree NERDTree

" NERD Tree files highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

" c/c++ sources
call NERDTreeHighlightFile('cpp', 'blue', 'none', 'blue', '#151515')
call NERDTreeHighlightFile('cxx', 'blue', 'none', 'blue', '#151515')
call NERDTreeHighlightFile('c++', 'blue', 'none', 'blue', '#151515')
call NERDTreeHighlightFile('cc', 'blue', 'none', 'blue', '#151515')
call NERDTreeHighlightFile('c', 'blue', 'none', 'blue', '#151515')

" c/c++ headers
call NERDTreeHighlightFile('hpp', 'Red', 'none', 'Red', '#151515')
call NERDTreeHighlightFile('hxx', 'Red', 'none', 'Red', '#151515')
call NERDTreeHighlightFile('h++', 'Red', 'none', 'Red', '#151515')
call NERDTreeHighlightFile('h', 'Red', 'none', 'Red', '#151515')

" markdown
call NERDTreeHighlightFile('md', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('markdown', 'cyan', 'none', 'cyan', '#151515')