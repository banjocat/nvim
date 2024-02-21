vim.g.mapleader = "'"
vim.cmd([[
call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'github/copilot.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'karb94/neoscroll.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neovim/nvim-lspconfig'
Plug 'folke/tokyonight.nvim'
Plug 'CopilotC-Nvim/CopilotChat.nvim'
Plug 'mbbill/undotree'
call plug#end()
]])

vim.keymap.set("n", "<leader>p", ":PlugUpdate<CR>")



require "local.general"

require "local.lsp"
require "local.copilot"
require "local.copilotchat"
require "local.telescope"
require "local.treesitter"
require "local.undotree"


