vim.g.UltiSnipsEditSplit="vertical"
vim.keymap.set('n', '<leader>e', ':UltiSnipsEdit<CR>')
vim.keymap.set('i', '<C-e>', '<C-R>=UltiSnips#ExpandSnippet()<CR>')
vim.keymap.set('i', '<C-j>', '<C-R>=UltiSnips#JumpForwards()<CR>')
vim.keymap.set('i', '<C-k>', '<C-R>=UltiSnips#JumpBackwards()<CR>')
