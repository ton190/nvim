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
vim.api.nvim_command("set noswapfile")
vim.api.nvim_command("set nomodeline")
vim.api.nvim_command("set noexpandtab")
vim.api.nvim_command("set nofoldenable")
vim.api.nvim_command("set signcolumn=yes")
vim.api.nvim_command("set completeopt=preview")

-- Fix Focus
vim.cmd([[autocmd BufEnter,FocusGained * checktime]])
vim.cmd([[autocmd CursorHold,CursorHoldI * checktime]])

-- Auto Format
-- vim.api.nvim_create_autocmd("BufWritePre * js", {
-- 	command = "lua vim.lsp.buf.format(nil, 1000)",
-- })
--
-- Config Diagnostics
-- require("lsp_lines").setup({}) -- Nice diagnostics
vim.diagnostic.config({ virtual_text = false })
vim.o.updatetime = 250
vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nill, {border="rounded", focus=false})]])
