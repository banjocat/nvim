

vim.cmd([[
call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'github/copilot.vim'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'karb94/neoscroll.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neovim/nvim-lspconfig'
Plug 'folke/tokyonight.nvim'
"Plug 'ray-x/go.nvim'
"Plug 'ray-x/guihua.lua'
call plug#end()
]])

vim.opt.number = true
vim.opt.ignorecase = true

vim.g.mapleader = "'"
vim.g.colorscheme = 'tokyonight'
vim.cmd [[colorscheme tokyonight]]

-- vim.colorscheme('tokyonight')

vim.keymap.set('n', '<C-\>', ':NERDTreeToggle<CR>')
vim.keymap.set('i', 'jj', '<esc>')
vim.keymap.set('n', '<tab><tab>', '<C-w><C-w>')

vim.keymap.set('n', '<C-}>', ':tabnew ~/.config/nvim/init.lua<CR>')
vim.keymap.set('n', '<C-{>', ':luafile ~/.config/nvim/init.lua<CR>')

-- setting up tab
vim.keymap.set('n', '<C-t>', ':tabnew %<CR>')
vim.keymap.set('n', '¡', '1gt')
vim.keymap.set('n', '™', '2gt')
vim.keymap.set('n', '£', '3gt')
vim.keymap.set('n', '¢', '4gt')
vim.keymap.set('n', '∞', '5gt')
vim.keymap.set('n', '§', '6gt')
vim.keymap.set('n', '¶', '7gt')
vim.keymap.set('n', '•', '8gt')
vim.keymap.set('n', 'ª', '9gt')



local lspconfig = require("lspconfig")
-- https://github.com/golang/tools/blob/master/gopls/doc/vim.md
vim.g.go_def_mode = 'gopls'
vim.g.go_info_mode = 'gopls'
lspconfig.gopls.setup({})
lspconfig.pyright.setup({})

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})




