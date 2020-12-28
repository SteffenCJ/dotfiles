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

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'prabirshrestha/async.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

let mapleader = ","

map <leader>h :CocCommand clangd.switchSourceHeader<CR>
nmap <leader>w :w<CR>
nmap <leader>rc :e ~/dotfiles/init.vim<CR>
autocmd! bufwritepost ~/dotfiles/init.vim source %
colorscheme gruvbox
