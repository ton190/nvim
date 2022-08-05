-- Install Plugin Manager
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end
-- Auto Source
local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", { command = "source <afile>", group = packer_group, pattern = "*.lua" })
vim.api.nvim_create_autocmd("BufWritePost", { command = "PackerSync", group = packer_group, pattern = "plugins.lua" })
-- Have packer use a popup window
local packer = require("packer")
packer.init({ display = {
	open_fn = function()
		return require("packer.util").float({ border = "rounded" })
	end,
} })

-- Install Plugins
packer.startup(function(use)
	use("wbthomason/packer.nvim") -- Package manager

	use({
		-- Overall Plugins
		"ellisonleao/gruvbox.nvim", -- Theme
		"goolord/alpha-nvim", -- Dashboard
		"kyazdani42/nvim-tree.lua", -- File browser
		"ryanoasis/vim-devicons", -- Icons for vim-tree
		"kyazdani42/nvim-web-devicons", -- Extra icons for vim-tree
		"lewis6991/gitsigns.nvim", -- Git integration
		"nvim-lualine/lualine.nvim", -- Status line
		"NvChad/nvim-colorizer.lua", -- Css colorizer
		"voldikss/vim-floaterm", -- Float terminal
		"folke/zen-mode.nvim", -- Zen mode
		"nvim-treesitter/nvim-treesitter", -- Code highlight
		"folke/twilight.nvim", -- Twilight for zen mode
		"jeetsukumaran/vim-buffergator", --Buffer navigator
		"vimwiki/vimwiki", -- Vimwiki
		"junegunn/vim-peekaboo", -- Check copy register *#
		"haya14busa/is.vim", -- Search better
		"nelstrom/vim-visual-star-search", -- Select and search
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim", -- Nice Diagnostics
		"ahmedkhalf/project.nvim", --Project manager
		"nvim-telescope/telescope-project.nvim", --Telescope extension
		"nvim-telescope/telescope.nvim", -- Fuzzy finder
		"nvim-telescope/telescope-file-browser.nvim", -- Fuzzy finder
		"nvim-lua/plenary.nvim", -- Useful lua functions used by lots of plugins
		"andweeb/presence.nvim",
		-- Nvim Helpers
		"tpope/vim-commentary", -- Autoc comments
		"windwp/nvim-autopairs", -- Auto pairs
		"tpope/vim-surround", -- Auto surround
		"alvan/vim-closetag", -- Auto close tags
		-- Javasctip
		"pangloss/vim-javascript", -- Javascript highlights
		"maxmellon/vim-jsx-pretty", -- React highlights
		"styled-components/vim-styled-components", -- React highlights
		"jparise/vim-graphql", -- React Heighlight
		-- Snippets
		"L3MON4D3/LuaSnip", -- Main snippet plugin
		"rafamadriz/friendly-snippets", -- Diferent snippets
		"mattn/emmet-vim", -- Html snippets
		-- Lsp Configurations
		"neovim/nvim-lspconfig", -- Main lsp configuration
		"williamboman/mason.nvim", -- Easy lsp config
		"williamboman/mason-lspconfig.nvim", -- Mason/Lspconfig connection
		-- Lsp Autompletion
		requires = {
			use({ "hrsh7th/nvim-cmp" }), -- Compilation
			use({ "hrsh7th/cmp-buffer" }), -- Buffer
			use({ "hrsh7th/cmp-path" }), -- Path
			use({ "saadparwaiz1/cmp_luasnip" }), -- Snippets
			use({ "hrsh7th/cmp-nvim-lsp" }), -- Lsp
			use({ "hrsh7th/cmp-nvim-lua" }), -- Lua
		},
		-- Lsp Other
		"jose-elias-alvarez/null-ls.nvim", -- Lsp formating and diagnostics
		"onsails/lspkind-nvim", -- Lsp pictogramms
	})
end)

-- Load Plugins
require("config/theme") -- StartScreen, ColorScheme, StatusLine
require("config/lsp") -- Lsp Plugins
require("config/main") -- All other Plugins
vim.cmd("source ~/.config/nvim/lua/config/vimwiki.vim") -- VimWiki
