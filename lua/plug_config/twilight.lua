require("twilight").setup({
	dimming = { alpha = 0.5, color = { "Normal", "#ffffff" }, inactive = true },
	context = 10,
	treesitter = true,
	expand = { "function", "method", "table", "if_statement", "function_definition", "method_declaration" },
})
