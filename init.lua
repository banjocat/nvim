vim.cmd([[
set number
set ignorecase


call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'github/copilot.vim'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'karb94/neoscroll.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/go.nvim'
Plug 'ray-x/guihua.lua'
Plug 'folke/tokyonight.nvim'
call plug#end()



nno <C-\> :NERDTreeToggle<CR>
inoremap jj <esc>
noremap <tab><tab> <C-w><C-w>

nno <C-}> :tabnew ~/.config/nvim/init.lua<CR>
nno <C-{> :luafile ~/.config/nvim/init.lua<CR>


"TAB stuff
noremap † :tabnew %<CR>
noremap ¡ 1gt 
noremap ™ 2gt 
noremap £ 3gt 
noremap ¢ 4gt 
noremap ∞ 5gt 
noremap § 6gt 
noremap ¶ 7gt 
noremap • 8gt 
noremap ª 9gt 

colorscheme tokyonight

]])
require('go').setup()

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimport()
  end,
  group = format_sync_grp,
})




