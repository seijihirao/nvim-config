return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		keys = {
			{ "<leader>bp", "<cmd>BufferLineTogglePin<cr>" },
			{ "<leader>bw", "<cmd>bd<cr>" },
			{ "<leader>1", "<cmd>BufferLineGoToBuffer 1<cr>" },
			{ "<leader>2", "<cmd>BufferLineGoToBuffer 2<cr>" },
			{ "<leader>3", "<cmd>BufferLineGoToBuffer 3<cr>" },
			{ "<leader>4", "<cmd>BufferLineGoToBuffer 4<cr>" },
			{ "<leader>5", "<cmd>BufferLineGoToBuffer 5<cr>" },
			{ "<leader>6", "<cmd>BufferLineGoToBuffer 6<cr>" },
			{ "<leader>7", "<cmd>BufferLineGoToBuffer 7<cr>" },
			{ "<leader>8", "<cmd>BufferLineGoToBuffer 8<cr>" },
			{ "<leader>9", "<cmd>BufferLineGoToBuffer 9<cr>" },
		},
		config = {
			options = {
				groups = {
					items = {
						require("bufferline.groups").builtin.pinned:with({ icon = "" }),
					},
				},
			},
		},
	},
}
