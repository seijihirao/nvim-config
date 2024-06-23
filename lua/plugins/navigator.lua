return {
	{
		"numToStr/Navigator.nvim",
		opts = {
			auto_save = "current",
			disable_on_zoom = true,
		},
		keys = {
			{ "<A-Left>", "<CMD>lua require('Navigator').left()<CR>" },
			{ "<A-Up>", "<CMD>lua require('Navigator').up()<CR>" },
			{ "<A-Right>", "<CMD>lua require('Navigator').right()<CR>" },
			{ "<A-Down>", "<CMD>lua require('Navigator').down()<CR>" },
			{ "<A-Backspace>", "<CMD>lua require('Navigator').previous()<CR>" },
		},
	},
}
