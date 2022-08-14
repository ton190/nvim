local telescope = require("telescope")
telescope.setup({
	defaults = {
		mappings = { n = { ["o"] = require("telescope.actions").select_default } },
		initial_mode = "insert",
		hidden = true,
		file_ignore_patterns = { ".git/", "node_modules/", "target/" },
	},
	extensions = {
		file_browser = { hidden = true },
		media_files = {
			filetypes = { "png", "webp", "jpg", "jpeg" },
			find_cmd = "rg", -- find command (defaults to `fd`)
		},
	},
})
telescope.load_extension("file_browser")
telescope.load_extension("projects")
telescope.load_extension("media_files")
