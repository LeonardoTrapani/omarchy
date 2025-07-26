function ColorMyPencils(color)
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	lazy = false,
	priority = 1000,
	config = function()
		require('kanagawa').setup({
			compile = false,             -- enable compiling the colorscheme
			undercurl = true,            -- enable undercurls
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = true},
			statementStyle = { bold = true },
			typeStyle = {},
			transparent = true,          -- enable transparent background
			dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
			terminalColors = true,       -- define vim.g.terminal_color_{0,17}
			colors = {
				palette = {},
				theme = { 
					wave = {}, 
					lotus = {}, 
					dragon = {}, 
					all = {
						ui = {
							bg_gutter = "none"
						}
					}
				},
			},
			overrides = function(colors)
				local theme = colors.theme
				return {
					NormalFloat = { bg = "none" },
					FloatBorder = { bg = "none" },
					FloatTitle = { bg = "none" },
				}
			end,
			theme = "wave",              -- Load "wave" theme when 'background' option is not set
			background = {               -- map the value of 'background' option to a theme
				dark = "wave",           -- try "dragon" !
				light = "lotus"
			},
		})

		ColorMyPencils("kanagawa")
	end,
}
