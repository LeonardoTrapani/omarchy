function ColorMyPencils(color)
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	"folke/tokyonight.nvim",
	name = "tokyonight",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "night", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
			light_style = "day", -- The theme is used when the background is set to light
			transparent = true, -- Enable this to disable setting the background color
			terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
			styles = {
				-- Style to be applied to different syntax groups
				-- Value is any valid attr-list value for `:help nvim_set_hl`
				comments = { italic = true },
				keywords = { italic = true },
				functions = {},
				variables = {},
				-- Background styles. Can be "dark", "transparent" or "normal"
				sidebars = "transparent", -- style for sidebars, see below
				floats = "transparent", -- style for floating windows
			},
			day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
			dim_inactive = false, -- dims inactive windows
			lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

			--- You can override specific color groups to use other groups or a hex color
			--- function will be called with a ColorScheme table
			on_colors = function(colors) end,

			--- You can override specific highlights to use other groups or a hex color
			--- function will be called with a Highlights and ColorScheme table
			on_highlights = function(highlights, colors)
				highlights.Normal = { bg = "none" }
				highlights.NormalFloat = { bg = "none" }
				highlights.FloatBorder = { bg = "none" }
				highlights.FloatTitle = { bg = "none" }
			end,

			cache = true, -- When set to true, the theme will be cached for better performance
			plugins = {
				-- enable all plugins when not using lazy.nvim
				-- set to false to manually enable/disable plugins
				all = package.loaded.lazy == nil,
				-- uses your plugin manager to automatically enable needed plugins
				-- currently only lazy.nvim is supported
				auto = true,
			},
		})

		ColorMyPencils("tokyonight")
	end,
}
