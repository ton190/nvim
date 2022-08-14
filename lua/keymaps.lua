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
vim.keymap.set("n", "k", 'v:count == 0 ? "gk" : "k"', { expr = true })
vim.keymap.set("n", "j", 'v:count == 0 ? "gj" : "j"', { expr = true })
vim.keymap.set("n", "<Up>", 'v:count == 0 ? "gk" : "k"', { expr = true })
vim.keymap.set("n", "<Down>", 'v:count == 0 ? "gj" : "j"', { expr = true })
-- Move between buffers
vim.keymap.set("n", "<M-[>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<M-]>", ":bnext<CR>", opts)
vim.keymap.set("n", "<Backspace><Backspace>", ":bdelete!<CR>", opts)
-- Telescope
vim.keymap.set("n", "<Leader>fd", require("telescope").extensions.file_browser.file_browser) -- Find directoryd
vim.keymap.set("n", "<Leader>ff", require("telescope.builtin").find_files) -- Find file
vim.keymap.set("n", "<Leader>ft", require("telescope.builtin").treesitter) -- Finde treesitter
vim.keymap.set("n", "<Leader>fl", require("telescope.builtin").current_buffer_fuzzy_find) -- Find line
vim.keymap.set("n", "<Leader>fL", require("telescope.builtin").live_grep) -- Find line global
vim.keymap.set("n", "<Leader>fcs", require("telescope.builtin").lsp_document_symbols) -- Find symbole globaly
vim.keymap.set("n", "<Leader>fs", require("telescope.builtin").lsp_dynamic_workspace_symbols) -- Find symbole globaly
vim.keymap.set("n", "<Leader>fr", require("telescope.builtin").lsp_references) -- Find symbole globaly
vim.keymap.set("n", "<Leader>fp", "Telescope projects <CR>") -- Find project
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
vim.cmd("let g:user_emmet_leader_key=','") -- Emmet leader key
vim.keymap.set("n", "<Leader>y", ":%y<CR>", opts) -- Select all text
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", opts) -- Remap escape
vim.keymap.set("n", "<Leader>/", ":nohlsearch<CR>", opts) -- No heighlight
vim.keymap.set("n", "<C-\\>", ":BuffergatorToggle<CR>", opts) -- Toggle buffers
vim.keymap.set("n", "<Leader>kk", ":%bdelete|edit #|normal `\"<CR>", opts) -- Kill all buffers
vim.keymap.set("n", "<Enter>", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts) -- Code action
vim.keymap.set("n", "<leader><leader>", "<cmd>lua vim.lsp.buf.format()<CR>", opts) -- Auto format
vim.keymap.set("n", "<Leader>a", ":Alpha<CR>", opts) -- Open Dashboard
vim.keymap.set("n", "<leader>z", ":ZenMode<CR>", opts) -- ZenMode
vim.keymap.set("n", "<F5>", ":setlocal spell!<CR>", opts) -- Toggle spelling
vim.keymap.set("n", "<F6>", ":set invrelativenumber<CR>", opts) -- Toggle line number
vim.keymap.set({ "n", "v" }, "<tab>", ":NvimTreeToggle<CR>", opts) -- Nvimtree toggle
vim.keymap.set("n", "<Leader>cd", ":cd %:p:h<CR>:pwd<CR>", opts) -- Change cmd to current buffer
