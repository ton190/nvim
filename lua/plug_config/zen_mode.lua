require("zen-mode").setup({
	window = { backdrop = 0.9, width = 84, height = 1 },
	plugins = {
		options = { enabled = true, ruler = false, showcmd = false, number = false },
		twilight = { enabled = true },
		gitsigns = { enabled = true },
		tmux = { enabled = false },
		kitty = { enabled = true, font = "+4" },
	},
})
