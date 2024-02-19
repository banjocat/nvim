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
Plug 'folke/tokyonight.nvim'

"Plug 'ray-x/go.nvim'
"Plug 'ray-x/guihua.lua'
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

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

]])
local lspconfig = require("lspconfig")
-- https://github.com/golang/tools/blob/master/gopls/doc/vim.md
lspconfig.gopls.setup({})





