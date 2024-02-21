local copilot_chat = require("CopilotChat")
copilot_chat.setup({})

vim.keymap.set("n", "<leader>ccr", ":CopilotChat<CR>")
vim.keymap.set("n", "<leader>cce", ":CopilotChatExplain<CR>")
vim.keymap.set("n", "<leader>ccc", ":CopilotChatInPlace<CR>")
vim.keymap.set("n", "<leader>ccv", ":CopilotChatVsplitToggle<CR>")
vim.keymap.set("v", "‘", ":CopilotChatVisual fix this<CR>")

copilot_chat.setup({
  debug = true,
  show_help = "yes",
  prompts = {
    Explain = "Explain how it works by Japanese language.",
    Review = "Review the following code and provide concise suggestions.",
    Tests = "Briefly explain how the selected code works, then generate unit tests.",
    Refactor = "Refactor the code to improve clarity and readability.",
  },
  build = function()
    vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
  end,
  event = "VeryLazy",
})


