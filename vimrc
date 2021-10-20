"set standard file encoding
set encoding=utf8
" No special per file vim override configs
set nomodeline
" Stop word wrapping
set nowrap
"   " Except... on Markdown. That's good stuff.
autocmd FileType markdown setlocal wrap
 " Adjust system undo levels
set undolevels=100
 " Use system clipboard
set clipboard=unnamed
 " Set tab width and convert tabs to spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" Don't let Vim hide characters or make loud dings
set conceallevel=1
set noerrorbells
 " Number gutter
set number 
set rnu
 " Use search highlighting
set hlsearch
 " Space above/beside cursor from screen edges
set scrolloff=1
set sidescrolloff=5
let mapleader="\<SPACE>"
syntax on

" Cursor bar and block mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[1 q"

" disable mouse support
set mouse=r
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=10
"
"Set arrow keys for frame resize
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>
" Disable arrow keys completely in Insert Mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
"Last opened file
nmap <Leader><Leader> <c-^>

"Next/previous buffer
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR><Paste>
"VIM plugins

call plug#begin('~/.vim/plugged')
Plug 'Shougu/unite.vim'
Plug 'dracula/vim',{'as':'dracula'} 
"Indent guides
Plug 'Yggdroot/indentLine'
"GIT gutter
Plug 'airblade/vim-gitgutter'
" Tabs and statusbar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Fuzzy finder
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
" Linting
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
call plug#end()
colorscheme dracula
" PLUGIN configurations
" Fuzzy finder settings
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>t :CtrlP<CR>

"airline settings
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
set laststatus=2

" Indentline settings
let g:indentLine_enabled = 1
let g:indentLine_char = ">"

" Fuzzy finder settings
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>t :CtrlP<CR>

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
