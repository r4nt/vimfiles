set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 'maxbrunsfeld/vim-yankstack'

filetype plugin indent on

so ~/.vim/fix-screen.vim

let g:syntastic_always_populate_loc_list = 1

set incsearch
set hlsearch
set ttymouse=sgr
nmap <silent> <leader>n :silent :nohlsearch<CR>
set cindent
set wildmode=list:longest
set wildmenu
set hidden
set title
set scrolloff=5
set ruler
set listchars=tab:>-,trail:·
set list!
set mouse=a
nmap <silent> <leader>s :set nolist!<CR>
syntax on
set cmdheight=2
set shortmess=a
set autoread
set expandtab
set shiftwidth=2
set softtabstop=2
set directory=/home/klimek/local/tmp,.,~/tmp,/var/tmp,/tmp
set nobackup
set nowritebackup
set noswapfile

" Highlight 80 columns:
highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%81v./
autocmd Filetype c,cpp set comments^=:///

nmap <silent> <F8> :YcmForceCompileAndDiagnostics<CR>
nmap <silent> <C-F> :YcmCompleter GoToDeclaration<CR>
nmap <silent> <C-D> :YcmCompleter GoToDefinition<CR>
nmap <C-Down> :lnext<CR><CR>
nmap <C-Up> :lprev<CR><CR>
nmap <F11> <Plug>yankstack_substitute_older_paste
nmap <F12> <Plug>yankstack_substitute_newer_paste

