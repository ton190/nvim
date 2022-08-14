-- Install Plugin Manager
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end
-- Auto Source
local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", { command = "source <afile>", group = packer_group, pattern = "*.lua" })

-- Have packer use a popup window
local packer = require("packer")
packer.init({ display = {
	open_fn = function()
		return require("packer.util").float({ border = "rounded" })
	end,
} })

return packer
