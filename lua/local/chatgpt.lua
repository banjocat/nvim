local gpt = require 'chatgpt'
local home = vim.fn.expand("$HOME")

gpt.setup({})

vim.keymap.set("n", "<leader>c", ":ChatGPT<CR>")
