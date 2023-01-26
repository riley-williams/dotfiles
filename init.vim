syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set encoding=UTF-8
set smartindent
set updatetime=300
set signcolumn=yes

set number
set numberwidth=4
set relativenumber
set signcolumn=number

" hide status, duplicate w/ lightline
set noshowmode
" something to do with terminal resizing
set noequalalways

call plug#begin('~/.config/nvim/plugged')

Plug 'nvim-lua/plenary.nvim'

" Themes
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'sainnhe/gruvbox-material'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" IDE
Plug 'neovim/nvim-lspconfig'
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

" Search
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'ggandor/leap.nvim'

" GUI Tweaks
Plug 'itchyny/lightline.vim'
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nanozuki/tabby.nvim'

call plug#end()

lua require('config')

set background=dark
set termguicolors
colorscheme tokyonight-storm

let g:lightline = {
\ 	'colorscheme': 'tokyonight',
\   'active': {
\		'left': [ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
\	 },
\	'component_function': {
\		'gitbranch': 'FugitiveHead'
\	},
\ }


