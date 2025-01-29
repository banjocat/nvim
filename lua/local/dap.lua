local dap = require 'dap'

-- go install github.com/go-delve/delve/cmd/dlv@latest
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>n", dap.step_over)
vim.keymap.set("n", "<leader>r", dap.continue)
--vim.keymap.set("n", "<leader>do", dap.repl.open)

-- vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
--   require('dap.ui.widgets').hover()
-- end)
vim.keymap.set({'n', 'v'}, '<Leader>d', function()
  require('dap.ui.widgets').preview()
end)
-- vim.keymap.set('n', '<Leader>df', function()
--   local widgets = require('dap.ui.widgets')
--   widgets.centered_float(widgets.frames)
-- end)
-- vim.keymap.set('n', '<Leader>ds', function()
--   local widgets = require('dap.ui.widgets')
--   widgets.centered_float(widgets.scopes)
-- end)



local dapgo = require "dap-go"
dapgo.setup({
	dap_configurations = {
		{
			type = "go",
			name = "Attach remote",
			mode = "remote",
			require = "attach",
		},
	},
})

local dappython = require 'dap-python'
dappython.setup("python3")
