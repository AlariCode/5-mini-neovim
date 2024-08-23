return {
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function()
		local bufferline = require("bufferline")

		local gray = "#585b70"
		local links = "#89dceb"

		bufferline.setup({
			options = {
				mode = "buffers",
				numbers = "none",
				color_icons = false,
				indicator = {
					style = "none",
				},
				modified_icon = "●",
				left_trunc_marker = "",
				right_trunc_marker = "",
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local s = " "
					for e, _ in pairs(diagnostics_dict) do
						local sym = e == "error" and " " or (e == "warning" and " " or " ")
						s = s .. sym
					end
					return s
				end,
				always_show_bufferline = true,
			},
			highlights = {
				background = {
					fg = gray,
				},
				buffer_selected = {
					fg = links,
				},
				buffer_visible = {
					fg = gray,
				},
				separator = {
					bg = "#1e1e2e",
					fg = "#1e1e2e",
				},
				diagnostic = {},
			},
		})
	end,
	}
}
