require("mason").setup()
local lspconfig = require("lspconfig")

local servers = {
	"sumneko_lua",
	"jsonls",
	"cssls",
	"tailwindcss",
	"tsserver",
	"bashls",
	"emmet_ls",
	"omnisharp",
}
require("mason-lspconfig").setup({ ensure_installed = servers })

for _, server in pairs(servers) do
	local opts = {
		on_attach = require("plug_config.lsp.handlers").on_attach,
		capabilities = require("plug_config.lsp.handlers").capabilities,
	}
	local has_custom_opts, server_custom_opts = pcall(require, "plug_config.lsp.settings." .. server)
	if has_custom_opts then
		opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
	end
	lspconfig[server].setup(opts)
end
