require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"bash",
		"css",
		"json",
		"html",
		"lua",
		"tsx",
		"typescript",
		"c_sharp",
		"yaml",
	},
	highlight = { enable = true },
	autopairs = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
	indent = { enable = true, disable = { "css" } },
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

