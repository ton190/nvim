-- Gruvbox
require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = true,
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true,
	contrast = "hard",
	overrides = {
		Normal = { bg = "none" },
		SignColumn = { bg = "none" },
	},
})
vim.cmd("colorscheme gruvbox")

-- Alpha
local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
	" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
	" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
	" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
	" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
	" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
	"",
	"",
}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("p", "  Find projects", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("s", "  Settings", ":e ~/.config/nvim/lua/settings.lua <CR>"),
	dashboard.button("x", "  Plugins", ":e ~/.config/nvim/lua/plugins.lua <CR>"),
	dashboard.button("k", "  Keymaps", ":e ~/.config/nvim/lua/keymaps.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}
require("alpha").setup(dashboard.opts)

-- Lualine
require("lualine").setup({
	options = {
		component_separators = "|",
		section_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
		lualine_b = { "filename", "branch", { "diff", colored = false } },
		lualine_c = {},
		lualine_x = {},
		lualine_y = { "filetype", "progress" },
		lualine_z = { { "location", separator = { right = "" }, left_padding = 2 } },
	},
	inactive_sections = {
		lualine_a = { "filename" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {
		lualine_a = {
			{
				"buffers",
				separator = { left = "", right = "" },
				right_padding = 2,
				symbols = { alternate_file = "" },
			},
		},
	},
})

--Colors
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#111111" })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#111111", fg = "yellow" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#444444" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#111111" })
vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "none" })
vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = "none" })
vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "none" })

vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "none", fg = "red" })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", { bg = "none", fg = "yellow" })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { bg = "none", fg = "green" })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { bg = "none", fg = "yellow" })

vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { bg = "none", fg = "red" })
vim.api.nvim_set_hl(0, "DiagnosticFloatingHint", { bg = "none", fg = "yellow" })
vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", { bg = "none", fg = "green" })
vim.api.nvim_set_hl(0, "DiagnosticFloatingWarn", { bg = "none", fg = "yellow" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })

vim.cmd("highlight! link SignColumn LineNr")
vim.cmd("autocmd InsertEnter * hi CursorLine guibg=#333333")
vim.cmd("autocmd InsertEnter * hi CursorLineNr guibg=#333333")
vim.cmd("autocmd InsertLeave * hi CursorLine guibg=#111111")
vim.cmd("autocmd InsertLeave * hi CursorLineNr guibg=#111111")

-- Diagnostic Configurations
vim.cmd("sign define DiagnosticSignError text= texthl=DiagnosticSignError")
vim.cmd("sign define DiagnosticSignWarn text= texthl=DiagnosticSignWarn")
vim.cmd("sign define DiagnosticSignInfo text= texthl=DiagnosticSignInfo")
vim.cmd("sign define DiagnosticSignHint text= texthl=DiagnosticSignHint")

-- Change Relative Numbers In Insert
vim.api.nvim_create_autocmd("InsertEnter", { command = "set relativenumber", pattern = "*" })
vim.api.nvim_create_autocmd("InsertLeave", { command = "set norelativenumber", pattern = "*" })
vim.api.nvim_create_autocmd("TermOpen", { command = "startinsert", pattern = "*" })
