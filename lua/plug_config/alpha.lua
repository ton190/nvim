local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	"",
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
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("p", "  Find projects", ":Telescope projects <CR>"),
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("s", "  Init", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("i", "  Settings", ":e ~/.config/nvim/lua/settings/init.lua <CR>"),
	dashboard.button("x", "  Plugins", ":e ~/.config/nvim/lua/plugins.lua <CR>"),
	dashboard.button("k", "  Keymaps", ":e ~/.config/nvim/lua/keymaps.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}
require("alpha").setup(dashboard.opts)
