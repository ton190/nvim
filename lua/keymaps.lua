local opts = { noremap = true, silent = true } -- Options
vim.g.mapleader = " " -- Remap leader
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", opts) -- Disable space

-- Move between windows
vim.keymap.set("n", "H", "<C-w>h")
vim.keymap.set("n", "L", "<C-w>l")
vim.keymap.set("n", "K", "<C-w>k")
vim.keymap.set("n", "J", "<C-w>j")
--Resize windows
vim.keymap.set("n", "<C-right>", ":vertical resize +1<CR>", opts)
vim.keymap.set("n", "<C-left>", ":vertical resize -1<CR>", opts)
vim.keymap.set("n", "<C-up>", ":res +1<CR>", opts)
vim.keymap.set("n", "<C-down>", ":res -1<CR>", opts)
-- Wrap text move
vim.keymap.set("n", "k", 'v:count == 0 ? "gk" : "k"', opts, { expr = true })
vim.keymap.set("n", "j", 'v:count == 0 ? "gj" : "j"', opts, { expr = true })
-- Move between buffers
vim.keymap.set("n", "<M-[>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<M-]>", ":bnext<CR>", opts)
vim.keymap.set("n", "<Backspace><Backspace>", ":bdelete<CR>", opts)
-- Telescope
vim.keymap.set("n", "<Leader>fd", require("telescope").extensions.file_browser.file_browser)
vim.keymap.set("n", "<Leader>ff", require("telescope.builtin").find_files)
vim.keymap.set("n", "<Leader>ft", require("telescope.builtin").treesitter)
vim.keymap.set("n", "<Leader>fl", require("telescope.builtin").current_buffer_fuzzy_find)
vim.keymap.set("n", "<Leader>fL", require("telescope.builtin").live_grep)
vim.keymap.set("n", "<Leader>fs", require("telescope.builtin").lsp_dynamic_workspace_symbols)
-- Float Terminal
vim.keymap.set("n", "<C-Space>", ":FloatermToggle<CR>", opts) -- Toggle
vim.keymap.set("t", "<C-Space>", "<C-\\><C-n>:FloatermToggle<CR>", opts) -- Toggle in terminal
vim.keymap.set("t", "<C-n>", "<C-\\><C-n>:FloatermNew<CR>", opts) -- New
vim.keymap.set("t", "<C-c>", "<C-\\><C-n>:FloatermKill<CR>", opts) -- Kill
vim.keymap.set("t", "<C-a>", "<C-\\><C-n>:FloatermKill<CR>N:FloatermNext<CR>", opts) -- Kill
vim.keymap.set("t", "<C-M-h>", "<C-\\><C-n>:FloatermPrev<CR>", opts) -- Back
vim.keymap.set("t", "<C-M-l>", "<C-\\><C-n>:FloatermNext<CR>", opts) -- Forward
vim.keymap.set("t", "<C-s>", "<C-\\><C-n>:FloatermUpdate --height=0.99 --width=0.45<CR>", opts) -- Small
vim.keymap.set("t", "<C-f>", "<C-\\><C-n>:FloatermUpdate --height=0.99 --width=0.99<CR>", opts) -- Big
vim.keymap.set("t", "<C-d>", "<C-\\><C-n>:FloatermUpdate --height=0.6 --width=0.6<CR>", opts) -- Normal
-- Other
vim.cmd("let g:user_emmet_leader_key=','") -- Emmet
vim.keymap.set("n", "<Leader>y", ":%y<CR>", opts) -- Select all text
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts) -- Remap escape
vim.keymap.set("n", "<Leader>/", ":nohlsearch<CR>", opts) -- No heighlight
vim.keymap.set("n", "<C-\\>", ":BuffergatorToggle<CR>", opts) -- Toggle buffers
vim.keymap.set("n", "<Enter>", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts) -- Code action
vim.keymap.set("n", "<leader><leader>", "<cmd>lua vim.lsp.buf.format()<CR>", opts) -- Auto format
vim.keymap.set("n", "<Leader>a", ":Alpha<CR>", opts) -- Open Dashboard
vim.keymap.set("n", "<leader>z", ":ZenMode<CR>", opts) -- ZenMode
vim.keymap.set("n", "<F5>", ":setlocal spell!<CR>", opts) -- Toggle spelling
vim.keymap.set("n", "<F6>", ":set invrelativenumber<CR>", opts) -- Toggle line number
vim.keymap.set({ "n", "v" }, "<tab>", ":NvimTreeToggle<CR>", opts ) -- Nvimtree toggle

-- Language Mapings
-- local lang_maps = {
-- 	typescript = { build = "deno compile %", exec = "deno run %" },
-- 	javascript = { build = "deno compile %", exec = "deno run %" },
-- }

-- for lang, data in pairs(lang_maps) do
-- 	if data.build ~= nil then
-- 		vim.api.nvim_create_autocmd(
-- 			"FileType",
-- 			{ command = "nnoremap <Leader>b :!" .. data.build .. "<CR>", pattern = lang }
-- 		)
-- 	end
-- 	vim.api.nvim_create_autocmd(
-- 		"FileType",
-- 		{ command = "nnoremap <Leader>e :split<CR>:terminal " .. data.exec .. "<CR>", pattern = lang }
-- 	)
-- end
