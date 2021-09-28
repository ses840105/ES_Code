" Use spaces instead of tabs
set expandtab

" Be smart when using tabkey
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Enable filetype plugins
filetype plugin on
filetype indent on


set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set number "Number 

" Set to auto read when a file is changed from the outside
set autoread

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" Enable syntax highlighting
syntax enable 

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

:set hlsearch

filetype plugin indent on
syntax on

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.7' }
Plug 'majutsushi/tagbar'
Plug 'preservim/nerdtree'
Plug 'valloric/vim-indent-guides'
Plug 'itchyny/lightline.vim'
Plug 'mechatroner/rainbow_csv'
call plug#end()

"jellybeans settings 
set t_Co=256
set background=dark
colorscheme jellybeans

" Indent Guides Settings                                                        
let g:indent_guides_enable_on_vim_startup = 1                                   
let g:indent_guides_auto_colors = 0                                             
let g:indent_guides_guide_size = 1                                              

autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3       
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4       

"airline Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='dark'

"NERDTree settings
"autocmd VimEnter * NERDTree | wincmd p
map <silent> <C-n> :NERDTreeFocus<CR>

nmap <silent> <F9> :TagbarToggle<CR> "Press F9 to open the tagbar interface
let g:tagbar_ctags_bin ='ctags' "ctags plugin since tagbar
let g:tagbar_left = 1 "Let the tagbar be displayed on the left side of the page, the default is the right
let g:tagbar_width = 30 "Set the width of the tagbar to 30 columns, the default is 40
let g:tagbar_autofocus = 1 
"This is when the tagbar is opened, the cursor is in the tagbar page, and the default is in the file opened by vim

"Rainbow csv
autocmd BufNewFile,BufRead *.csv   set ft=csv
