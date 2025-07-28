function ColorMyPencils(color)
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	"catppuccin/nvim",
	name = "catppuccin-latte",
	config = function()
		require("catppuccin-latte").setup({
			tranparent_backgroun = true,
			flavour = "latte",
		})

		ColorMyPencils("catppuccin-latte")
	end,
}
