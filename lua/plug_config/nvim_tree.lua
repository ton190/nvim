local tree_cb = require("nvim-tree.config").nvim_tree_callback

require("nvim-tree").setup({
	open_on_tab = false,
	sort_by = "name",
	sync_root_with_cwd = false,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = false,
	},
	renderer = {
		highlight_opened_files = "name",
		highlight_git = false,
		add_trailing = false,
		root_folder_modifier = ":t",
		indent_markers = {
			enable = true,
			inline_arrows = true,
			icons = {
				none = " ",
				corner = "╚",
				edge = "║",
				item = "╠",
				-- corner = "└",
				-- edge = "│",
				-- item = "├",
			},
		},
		icons = {
			webdev_colors = true,
			git_placement = "after",
			padding = " ",
			show = {
				file = true,
				folder = true,
				folder_arrow = false,
				git = true,
			},
			-- padding = "  ",
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
					unstaged = "✗",
					staged = "✓",
					unmerged = "",
					renamed = "✐",
					untracked = "○",
					deleted = "⊖",
					ignored = "◌",
				},
			},
		},
	},
	filters = {
		dotfiles = true,
		custom = {},
		exclude = {},
	},

	diagnostics = {
		enable = true,
		show_on_dirs = false,
		icons = {
			-- hint = "",
			-- info = "",
			-- warning = "",
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	git = {
		enable = true,
		ignore = true,
		show_on_dirs = true,
		timeout = 400,
	},
	view = {
		centralize_selection = false,
		width = 30,
		height = 30,
		side = "left",
		mappings = {
			list = {
				{ key = { "l", "<CR>", "o" }, cb = tree_cb("edit") },
				{ key = "h", cb = tree_cb("close_node") },
				{ key = "v", cb = tree_cb("vsplit") },
				{ key = "s", action = "split" },
				{ key = "<Tab>", action = "" },
			},
		},
	},
})
