vim.g.UltiSnipsEditSplit="vertical"
vim.keymap.set('n', '<leader>u', ':UltiSnipsEdit<CR>')
vim.keymap.set('i', '<C-h>', '<C-R>=UltiSnips#ExpandSnippet()<CR>')
vim.keymap.set('i', '<C-j>', '<C-R>=UltiSnips#JumpForwards()<CR>')
vim.keymap.set('i', '<C-k>', '<C-R>=UltiSnips#JumpBackwards()<CR>')
