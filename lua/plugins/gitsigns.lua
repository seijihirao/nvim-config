return {
	"lewis6991/gitsigns.nvim",
	opts = {
		current_line_blame = true,
		current_line_blame_opts = {
			virt_text = true,
			virt_text_ops = "right_align",
			delat = 100,
		},
	},
	keys = {
		{ "<leader>gd", "<cmd>Gitsigns preview_hunk<cr>", "Git get diff" },
	},
}
