local gpt = require 'chatgpt'
local home = vim.fn.expand("$HOME")

gpt.setup({})

vim.keymap.set("n", "<C-c>", ":ChatGPT<CR>")
vim.keymap.set("i", "<C-c>", "<cmd>ChatGPT<CR>")
vim.keymap.set("c", "<C-c>", ":ChatGPT<CR>")

