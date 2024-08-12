return {
	{
		"vinnymeller/swagger-preview.nvim",
		version = "*",
		build = "npm install -g swagger-ui-watcher",
		config = function()
			require("swagger-preview").setup({
				-- The port to run the preview server on
				port = 8000,
				-- The host to run the preview server on
				host = "localhost",
			})
		end,
	},
}
