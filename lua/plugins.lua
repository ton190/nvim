local packer = require("packer_config")

packer.startup(function(use)
	use({
		"wbthomason/packer.nvim", --- Packer
		"ellisonleao/gruvbox.nvim", -- Theme
		"goolord/alpha-nvim", -- Dashboard
		"kyazdani42/nvim-tree.lua", -- File browser
		"ryanoasis/vim-devicons", -- Icons for vim-tree
		"lukas-reineke/indent-blankline.nvim", -- Indent line
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
		"nvim-telescope/telescope-media-files.nvim", -- Telescop imgage preview
		"nvim-lua/plenary.nvim", -- Useful lua functions used by lots of plugins
		"nvim-lua/popup.nvim", -- Popup
		"jlcrochet/vim-razor", -- Razor highlight
		"glepnir/lspsaga.nvim", -- Treesitter highlights
		"dinhhuy258/git.nvim", -- A simple clone of the plugin vim-fugitive
		-- Nvim Helpers
		"RRethy/vim-illuminate", -- Highlight uses under cursor
		"tpope/vim-commentary", -- Autoc comments
		"windwp/nvim-autopairs", -- Auto pairs
		"tpope/vim-surround", -- Auto surround
		"alvan/vim-closetag", -- Auto close tags
		"windwp/nvim-ts-autotag", -- Auto close tags
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
		"tzachar/cmp-tabnine", -- Tabnine
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
