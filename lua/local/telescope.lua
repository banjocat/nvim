require('telescope').setup({})

vim.keymap.set("n", "<C-p>", ":Telescope find_files<CR>")
vim.keymap.set("n", "<C-g>", ":Telescope live_grep<CR>")


