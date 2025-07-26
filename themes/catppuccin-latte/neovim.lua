function ColorMyPencils(color)
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	"catppuccin/nvim",
	name = "catppuccin",
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
			flavour = "latte", -- latte, frappe, macchiato, mocha
		})

		ColorMyPencils("catppuccin")
	end,
}
