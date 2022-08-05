-- Nvim Tree
require("nvim-tree").setup({
	open_on_tab = false,
	-- sort_by = "filetype",
	-- sync_root_with_cwd = true,
	-- respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = true,
	},
	filters = {
		dotfiles = true,
	},
	view = {
		mappings = {
			list = {
				{ key = "<Tab>", action = "" },
				{ key = "s", action = "vsplit" },
			},
		},
	},
	renderer = {
		root_folder_modifier = ":t",
		icons = {
			glyphs = {
				default = "",
				symlink = "",
				folder = {
					arrow_open = "",
					arrow_closed = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "",
					staged = ".",
					unmerged = "",
					renamed = "➜",
					untracked = "U",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
})

-- Zen Mode
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

-- Twilight
require("twilight").setup({
	dimming = { alpha = 0.5, color = { "Normal", "#ffffff" }, inactive = true },
	context = 10,
	treesitter = true,
	expand = { "function", "method", "table", "if_statement", "function_definition", "method_declaration" },
})

-- Treesitter
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"bash",
		"css",
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
	indent = { enable = true, disable = { "css" } },
})

--Projects
require("project_nvim").setup({
	active = true,
	on_config_done = nil,
	manual_mode = false,
	detection_methods = { "lsp", "pattern" },
	patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
	ignore_lsp = {},
	exclude_dirs = {},
	show_hidden = false,
	silent_chdir = true,
	datapath = vim.fn.stdpath("data"),
})

-- Telescope
local telescope = require("telescope")
telescope.setup({
	defaults = {
		mappings = { n = { ["o"] = require("telescope.actions").select_default } },
		initial_mode = "normal",
		hidden = true,
		file_ignore_patterns = { ".git/", "node_modules/", "target/" },
	},
	extensions = { file_browser = { hidden = true } },
})
telescope.load_extension("file_browser")
telescope.load_extension("projects")

-- Colorizer
require("colorizer").setup({
	scss = { hsl_fn = true },
	"css",
	"scss",
	"javascript",
})

-- Presence
require("presence"):setup({
	neovim_image_text = "Neovim",
	presence_log_level = "error",
	presence_editing_text = "Editing « %s »",
	presence_file_explorer_text = "Browsing files",
	presence_reading_text = "Reading  « %s »",
	presence_workspace_text = "Working on « %s »",
})

-- Closetag Works in Jsx
vim.cmd([[let g:closetag_filetypes = 'html,xhtml,jsx,javascript,typescript.tsx']])
-- Disable flymode in autopairs
vim.cmd([[
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'
]])
