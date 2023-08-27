

set tabstop=4
set shiftwidth=4

set number relativenumber

inoremap jk <Esc>
inoremap kj <Esc>
vnoremap jk <Esc>
vnoremap kj <Esc>

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


call plug#end()

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


