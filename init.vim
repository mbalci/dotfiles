
set nocompatible
filetype indent plugin on
set nocompatible              " be iMproved, required
filetype off                  " required

let g:airline_powerline_fonts = 1
let base16colorspace=256
set termguicolors


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'scrooloose/nerdtree'

Plugin 'chriskempson/base16-vim'

Plugin 'Valloric/YouCompleteMe'

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'ryanoasis/vim-devicons'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'Yggdroot/indentLine'
Plugin 'ervandew/supertab'


call vundle#end()
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


set encoding=UTF-8
colorscheme base16-eighties
map <C-n> :NERDTreeToggle<CR>
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
"set guifont=Mono 11           
filetype plugin indent on    
