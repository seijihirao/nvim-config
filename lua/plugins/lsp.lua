return {
	-- add pyright to lspconfig
	{
		"neovim/nvim-lspconfig",
		---@class PluginLspOpts
		opts = {
			---@type lspconfig.options
			servers = {
				-- pyright will be automatically installed with mason and loaded with lspconfig
				pyright = {},
			},
		},
	},

	-- for typescript, LazyVim includes extra specs to properly setup lspconfig,
	-- treesitter, mason and the tsserver replacement (vtsls).
	{ import = "lazyvim.plugins.extras.lang.typescript" },
}
