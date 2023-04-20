return {
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
		keys = {
			{
				"n",
				"<leader>/",
				"gcc",
				desc = "Comment line toggle",
			},
		},
	},
}
