"
"██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║
"╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
"
set relativenumber 
set autoindent
set smartindent
set lazyredraw
set showcmd
set visualbell
set hlsearch
set incsearch
set ignorecase smartcase
set wildmenu
set wildmode=full
set encoding=utf-8
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set list
set colorcolumn=80
set nocompatible
filetype plugin indent on
syntax on

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'prabirshrestha/async.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'morhetz/gruvbox'
Plug 'gruvbox-community/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vimwiki/vimwiki'
Plug 'plasticboy/vim-markdown'
Plug 'tools-life/taskwiki'
" #Plug 'tbabej/taskwiki'

call plug#end()

let mapleader = ","

map <leader>h :CocCommand clangd.switchSourceHeader<CR>
nmap <leader>w :w<CR>
nmap <leader>rc :e ~/dotfiles/nvim/init.vim<CR>
autocmd! bufwritepost ~/dotfiles/nvim/init.vim source %
colorscheme gruvbox


let g:vimwiki_list = [{'path':'~/vimwiki', 'syntax': 'markdown', 'ext': '.md',}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

let g:vimwiki_markdown_link_ext = 1
let g:taskwiki_markup_syntax = 'markdown'
let g:markdown_folding = 0


au BufNewFile,BufRead *.md  setf markdown
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
