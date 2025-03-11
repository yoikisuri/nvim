-- colorscheme
vim.api.nvim_create_autocmd({ "VimEnter" }, {
	nested = true,
	callback = function()
		vim.cmd.colorscheme(vim.g.SCHEME)
	end,
})

vim.api.nvim_create_autocmd({ "ColorScheme" }, {
	callback = function(params)
		vim.g.SCHEME = params.match
	end,
})

-- yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("HighlightYank", { clear = true }),
  desc = "Highlight yanked text",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
})
