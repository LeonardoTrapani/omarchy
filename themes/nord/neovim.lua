function ColorMyPencils(color)
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	"shaunsingh/nord.nvim",
	name = "nord",
	lazy = false,
	priority = 1000,
	config = function()
		-- Nord configuration
		vim.g.nord_contrast = true
		vim.g.nord_borders = false
		vim.g.nord_disable_background = true -- Enable transparent background
		vim.g.nord_italic = true
		vim.g.nord_uniform_diff_background = true
		vim.g.nord_bold = true

		-- Load the colorscheme
		require('nord').set()
		
		ColorMyPencils("nord")
	end,
}
