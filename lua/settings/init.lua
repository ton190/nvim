-- Basic settings
local set = vim.opt
set.backup = false
set.completeopt = { "menuone", "noselect" }
set.mouse = "a"
set.swapfile = false
set.clipboard = "unnamedplus"
set.lazyredraw = true
set.number = true
set.relativenumber = false
set.termguicolors = true
set.updatetime = 100
set.scrolloff = 5
set.tabstop = 2
set.ts = 2
set.sw = 2
set.sts = 2
set.expandtab = true
set.smarttab = true
set.splitbelow = true
set.splitright = true
set.regexpengine = 1
set.synmaxcol = 200
set.directory = "~/.config/nvim/tmp//"
set.title = true
set.list = true
set.listchars = "tab:  ,trail:×,nbsp:.,extends:#"
set.fillchars = "eob: ,fold: ,vert:|"
set.encoding = "utf-8"
set.belloff = "all"
set.hidden = true
set.ttimeoutlen = 0
set.ttyfast = true
set.cmdheight = 2
set.autoindent = true
set.smartindent = true
set.incsearch = true
set.hlsearch = true
set.autoread = true
set.wildmenu = true
set.ignorecase = true
set.smartcase = true
set.linebreak = true
set.backspace = "2"
set.colorcolumn = "80"
set.cursorline = true
set.updatetime = 250
vim.api.nvim_command("set noswapfile")
vim.api.nvim_command("set nomodeline")
vim.api.nvim_command("set noexpandtab")
vim.api.nvim_command("set nofoldenable")
vim.api.nvim_command("set signcolumn=yes")
vim.api.nvim_command("set completeopt=preview")

	require("settings/colors")
vim.cmd("source ~/.config/nvim/lua/settings/autocommands.vim")
vim.cmd([[let g:closetag_filetypes = 'html,xhtml,jsx,javascript,typescript.tsx']])
