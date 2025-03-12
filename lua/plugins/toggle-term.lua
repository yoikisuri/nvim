return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			shade_terminals = true,
			shading_factor = 2,
		})
		vim.keymap.set("t", "<esc>", "<C-\\><C-n>", { remap = true })
		vim.keymap.set("n", "<leader>tm", ":ToggleTerm<CR>")
	end,
}
