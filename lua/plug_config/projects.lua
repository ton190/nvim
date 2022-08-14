require("project_nvim").setup({
	active = true,
	on_config_done = nil,
	manual_mode = false,
	detection_methods = { "pattern" },
	patterns = { "client", "server", "*.sln", ".git" },
	ignore_lsp = {},
	exclude_dirs = {},
	show_hidden = false,
	silent_chdir = true,
	datapath = vim.fn.stdpath("data"),
})
