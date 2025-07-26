function ColorMyPencils(color)
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	"sainnhe/everforest",
	name = "everforest",
	lazy = false,
	priority = 1000,
	config = function()
		-- Available values: 'hard', 'medium'(default), 'soft'
		vim.g.everforest_background = 'medium'
		-- Enable transparent background
		vim.g.everforest_transparent_background = 1
		-- Enable italic
		vim.g.everforest_enable_italic = 1
		-- Disable italic in comments
		vim.g.everforest_disable_italic_comment = 0
		-- Control the style of current line number
		vim.g.everforest_current_word = 'grey background'
		-- Control the style of statusline/tabline
		vim.g.everforest_better_performance = 1

		ColorMyPencils("everforest")
	end,
}

