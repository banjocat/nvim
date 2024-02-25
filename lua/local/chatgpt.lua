local gpt = require 'chatgpt'
local home = vim.fn.expand("$HOME")

gpt.setup({})

vim.keymap.set("n", "<leader>g", ":ChatGPT<CR>")

