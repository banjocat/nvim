local dap = require 'dap'

-- go install github.com/go-delve/delve/cmd/dlv@latest
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>n", dap.step_over)
vim.keymap.set("n", "<leader>r", dap.continue)
vim.keymap.set("n", "<leader>o", dap.repl.open)


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
dappython.setup()
