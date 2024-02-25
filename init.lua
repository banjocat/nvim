vim.g.mapleader = "'"
vim.cmd([[
call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'github/copilot.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'karb94/neoscroll.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'folke/tokyonight.nvim'
Plug 'mbbill/undotree'


Plug 'Pocco81/auto-save.nvim'


Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'neovim/nvim-lspconfig'



Plug 'mfussenegger/nvim-dap'
Plug 'leoluz/nvim-dap-go'
Plug 'mfussenegger/nvim-dap-python'


Plug 'MunifTanjim/nui.nvim'
Plug 'folke/trouble.nvim'
Plug 'jackMort/ChatGPT.nvim'

Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

call plug#end()
]])


vim.keymap.set("n", "<leader>p", ":PlugUpdate<CR>")


require "local.general"
require 'local.autosave'

require "local.lsp"
require "local.copilot"
require "local.telescope"
require "local.treesitter"
require "local.undotree"
require 'local.dap'

require "local.cmp"
require "local.ultisnips"

require "local.chatgpt"



