local copilot = require '_copilot'


vim.keymap.set("i", "<C-m>", "<cmd>call copilot#Next()<CR>")
vim.keymap.set("i", "<C-o>", "<cmd>call copilot#Previous()<CR>")



