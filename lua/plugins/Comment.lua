return {
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
		keys = {
			{
				"<leader>/",
				"gcc",
				desc = "Comment line toggle",
			},
		},
	},
}
