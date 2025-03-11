vim.loader.enable()

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- Cài đặt phiên bản ổn định
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins" }
	},
	install = {missing = true, colorscheme = { "tokyonight" } },
  checker = { enabled = true },
	ui = {
		border = "rounded",
		size = { width = 0.8, height = 0.8 }
	}
})
