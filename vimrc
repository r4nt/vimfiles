set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'scrooloose/syntastic'
Bundle 'wincent/Command-T'
Bundle 'bling/vim-airline'

if ! exists('g:has_system_ycm')
  Bundle 'Valloric/YouCompleteMe'
endif
if ! exists('g:has_system_ultisnips')
  Bundle 'SirVer/ultisnips'
endif

filetype plugin indent on

so ~/.vim/fix-screen.vim

let g:syntastic_always_populate_loc_list = 1
let g:ycm_enable_diagnostic_signs = 0

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
set colorcolumn=81,101
set tabstop=2
hi ColorColumn ctermbg=236 ctermfg=124
autocmd Filetype c,cpp set comments^=:///

nmap <silent> <F8> :YcmForceCompileAndDiagnostics<CR>
nmap <silent> <C-F> :YcmCompleter GoToDeclaration<CR>
nmap <silent> <C-D> :YcmCompleter GoToDefinition<CR>
nmap <C-Down> :lnext<CR><CR>
nmap <C-Up> :lprev<CR><CR>
nmap <F11> <Plug>yankstack_substitute_older_paste
nmap <F12> <Plug>yankstack_substitute_newer_paste

inoremap <C-K> <C-O>:pyf ~/bin/clang-format.py<CR>
noremap <C-K> :pyf ~/bin/clang-format.py<CR>
inoremap <C-L> <C-O>:pyf ~/bin/clang-format-unstable.py<CR>
noremap <C-L> :pyf ~/bin/clang-format-unstable.py<CR>

