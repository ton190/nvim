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

-- Change Relative Numbers In Insert
vim.api.nvim_create_autocmd("InsertEnter", { command = "set relativenumber", pattern = "*" })
vim.api.nvim_create_autocmd("InsertLeave", { command = "set norelativenumber", pattern = "*" })
vim.api.nvim_create_autocmd("TermOpen", { command = "startinsert", pattern = "*" })