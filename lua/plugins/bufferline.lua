return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function ()
		require("bufferline").setup()

		vim.keymap.set("n", "<A-Right>", ":BufferLineCycleNext<CR>", { silent = true })
		vim.keymap.set("n", "<A-Left>", ":BufferLineCyclePrev<CR>", { silent = true })
	end
}
