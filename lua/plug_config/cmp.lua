local cmp = require("cmp")
local lspkind = require("lspkind")
local compare = cmp.config.compare
local luasnip = require("luasnip")
require("luasnip/loaders/from_vscode").lazy_load({ paths = { vim.fn.stdpath("config") .. "/lua/snippets" } })

-- local check_backspace = function()
-- 	local col = vim.fn.col(".") - 1
-- 	return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
-- end

local kind_icons = {
	Text = "",
	Method = "m",
	Function = "",
	Constructor = "",
	Field = "",
	Variable = "",
	Class = "",
	Interface = "",
	Module = "",
	Property = "",
	Unit = "",
	Value = "",
	Enum = "",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "",
	Event = "",
	Operator = "",
	TypeParameter = "",
}

local source_mapping = {
	nvim_lsp = "[LSP]",
	luasnip = "[Snippet]",
	buffer = "[Buffer]",
	path = "[Path]",
	cmp_tabnine = "[Tabnine]",
}

cmp.setup({
	enabled = true,
	autocomplete = true,
	debug = false,
	min_length = 1,
	preselect = "enable",
	throttle_time = 80,
	source_timeout = 200,
	incomplete_delay = 400,
	max_abbr_width = 100,
	max_kind_width = 100,
	max_menu_width = 100,
	sources = {
		{ name = "path", priority = 100 },
		{ name = "luasnip", priority = 90 },
		{ name = "cmp_tabnine", priority = 80 },
		{ name = "nvim_lsp", priority = 70 },
		{ name = "buffer", priority = 60 },
	},
	sorting = {
		-- priority_weight = 1.0,
		-- comparators = {
		-- 	compare.locality,
		-- 	compare.recently_used,
		-- 	compare.score,
		-- 	compare.offset,
		-- 	compare.order,
		-- },
	},
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	formatting = {
		format = lspkind.cmp_format({
			mode = "text",
			maxwidth = 40,
			before = function(entry, vim_item)
				vim_item.kind = string.format("%s", kind_icons[vim_item.kind])

				local menu = source_mapping[entry.source.name]
				if entry.source.name == "cmp_tabnine" then
					if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
						menu = entry.completion_item.data.detail .. " " .. menu
					end
					vim_item.kind = ""
				end

				vim_item.menu = menu

				return vim_item
			end,
		}),
	},
	mapping = cmp.mapping.preset.insert({
		-- ["<C-Space>"] = cmp.mapping.complete(),
		-- ["<CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		-- ["<Tab>"] = cmp.mapping(function(fallback)
		-- 	if cmp.visible() then
		-- 		cmp.select_next_item()
		-- 	elseif luasnip.expandable() then
		-- 		luasnip.expand()
		-- 	elseif luasnip.expand_or_jumpable() then
		-- 		luasnip.expand_or_jump()
		-- 	elseif check_backspace() then
		-- 		fallback()
		-- 	else
		-- 		fallback()
		-- 	end
		-- end, { "i", "s" }),
		-- ["<S-Tab>"] = cmp.mapping(function(fallback)
		-- 	if cmp.visible() then
		-- 		cmp.select_prev_item()
		-- 	elseif luasnip.jumpable(-1) then
		-- 		luasnip.jump(-1)
		-- 	else
		-- 		fallback()
		-- 	end
		-- end, { "i", "s" }),
	}),
	window = {
		completion = cmp.config.window.bordered(),
		documentation = {
			border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
		},
	},
	confirm_opts = {
		behavior = cmp.ConfirmBehavior.Replace,
		select = false,
	},
	experimental = {
		ghost_text = true,
	},
})
