return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			pickers = {
				colorscheme = { enable_preview = true },
			},
		},
		keys = {
			{ "<leader>th", ":Telescope colorscheme<CR>" },
			{ "<leader>ff", ":Telescope find_files<CR>" },
		},
	},
}
