return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"lua",
					"javascript",
					"python",
					"query",
				},
				highlight = {
					enable = true,
				},
				indent = {
					enable = true,
				},
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
