return {
	"ggandor/leap.nvim",
	lazy = false,
	config = function()
		require("leap").add_default_mappings(true)
	end,
}
