return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			local languages = {
				"lua",
				"javascript",
				"python",
				"query",
				"xml",
			}
			require("nvim-treesitter").install(languages)
			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "lua", "javascript", "python", "query", "xml" },
				callback = function()
					-- highlighting (pcall: parsers are still installing on first launch)
					if not pcall(vim.treesitter.start) then
						return
					end
					-- indentation
					vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end,
			})
		end,
	},
	{
		"windwp/nvim-autopairs",
		config = function()
            local autopairs = require("nvim-autopairs")
            autopairs.setup({})
        end,
	},
}
