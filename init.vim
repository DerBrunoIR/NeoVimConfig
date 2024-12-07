set tabstop=4
set shiftwidth=4

set splitright
set splitbelow
set number relativenumber

"inoremap jk <Esc>
"inoremap jK <Esc>
"inoremap Jk <Esc>
"inoremap Jk <Esc>
"inoremap kj <Esc>

set tabstop=4
set shiftwidth=4

map <space>e :lua vim.diagnostic.open_float(0, {scope="line"})<CR>

set completeopt=menu,menuone

call plug#begin()
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kiyoon/telescope-insert-path.nvim'

"Plug 'ggandor/leap.nvim'

Plug 'Treeniks/isabelle-lsp.nvim'
Plug 'Treeniks/isabelle-syn.nvim'

call plug#end()

" setup leap
"lua require('setup-leap')

"catppuccin 
lua require("setup-catppuccin")

"treesitter config 
lua require("setup-treesitter")

"lsp config
lua require("setup-lspconfig")
"mason 
lua require("setup-mason")
"mason-lspconfig
lua require("setup-mason-lspconfig")

"cmp
lua require("setup-cmp")

"setup lsp's 
lua require("setup-language-servers")

"setup telescope 
lua require("setup-telescope")


