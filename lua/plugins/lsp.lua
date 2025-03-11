return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },

		opts = {
			servers = {
				lua_ls = {
					settings = {
						Lua = {
							diagnostics = {
								globals = { "vim" },
							},
						},
					},
				},
				pyright = {},
			},
			capabilities = require("blink.cmp").get_lsp_capabilities(),
		},

		config = function(_, opts)
			local lspconfig = require("lspconfig")

			for server, server_opts in pairs(opts.servers) do
				server_opts.capabilities =
					vim.tbl_deep_extend("force", {}, opts.capabilities, server_opts.capabilities or {})
				lspconfig[server].setup(server_opts)
			end
		end,
	},
}
