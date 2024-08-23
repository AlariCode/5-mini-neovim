return {
	{
		'stevearc/dressing.nvim',
		config = function()
			require('dressing').setup({
				input = {
					win_options = {
						winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None',
					},
				}
			})
		end
	}
}
