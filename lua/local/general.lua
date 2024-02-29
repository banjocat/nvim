vim.opt.number = true
vim.opt.ignorecase = false
vim.g.ffs = 'unix'


vim.g.colorscheme = 'tokyonight'
vim.cmd [[colorscheme tokyonight]]


vim.keymap.set('n', '<C-\\>', ':NERDTreeToggle<CR>')
vim.keymap.set('n', '<C-|>', ':NERDTreeFind<CR>')
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

