vim.g.copliot_filetype_blacklist = { "markdown", "txt" }


vim.g.copilot_keymap = {
  ["n"] = {
    ["<leader>cc"] = "copilot#complete",
    ["<leader>cs"] = "copilot#suggest",
    ["<leader>ci"] = "copilot#insert",
    ["<leader>cr"] = "copilot#replace",
    ["<leader>cp"] = "copilot#preview",
    ["<leader>cd"] = "copilot#disable",
    ["<leader>ce"] = "copilot#enable",
  }
}
