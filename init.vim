syntax on

"SETTINGS

set mouse=a
set exrc
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set relativenumber
set nowrap
set noswapfile
set nobackup
set ignorecase
set smartcase
set undodir=~/.vim/undodir
set undofile
set incsearch
set backspace=indent,eol,start
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes

"Give more space for displaying messages.
set cmdheight=2

set colorcolumn=80

"PLUGINS

call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'darrikonn/vim-gofmt'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'tpope/vim-commentary'
Plug 'ms-jpq/coq_nvim'
Plug 'nvim-treesitter/nvim-treesitter'

" Telescope stuff
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'sharkdp/fd'
Plug 'BurntSushi/ripgrep'

call plug#end()

"COLORS AND THINGS

colorscheme gruvbox
highlight Normal guibg=none

set background=dark

let loaded_matchparen = 1
let mapleader = " "

"REMAPS

nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <C-p> :Telescope find_files cwd=/<CR>
nnoremap <Leader>u :UndotreeToggle<CR>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" replace currently selected text with default register
" without yanking it
nnoremap <leader>p "_diwP

" other godly remaps
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
vnoremap <leader>d "_d


"FUNCTIONS
