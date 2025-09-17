-- LazyVim plugin spec: inject Bauhaus palette into Tokyonight
-- Place this file under LazyVim's plugin specs (Omarchy will copy/link when applying the theme)
return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "night",
      transparent = false,
      on_colors = function(c)
        -- Core (Bauhaus muted slate + warm coral/sand accents)
        c.bg           = "#101318"
        c.bg_dark      = "#161B22"
        c.bg_highlight = "#222733"
        c.fg           = "#EAEFF5"
        c.fg_dark      = "#C6CED8"
        c.comment      = "#98A0AE" -- Text Dim / gutters

        -- Accents / semantic
c.magenta = "#E37B66" -- coral (WCAG-lifted)
c.cyan    = "#809D9E" -- muted teal (WCAG-lifted)
c.blue    = "#8999AA" -- cool steel-blue (WCAG-lifted)
c.red     = "#CB886D" -- terracotta (WCAG-lifted)
c.green   = "#789FA2" -- teal-leaning green (WCAG-lifted)
        c.yellow  = "#E7A46F" -- warm tan

        -- Optional terminal palette
        c.terminal_black   = "#161B22"
        c.terminal_red     = "#C0704F"
        c.terminal_green   = "#6F999C"
        c.terminal_yellow  = "#E0A568"
        c.terminal_blue    = "#6C7C82"
        c.terminal_magenta = "#A3ADA7"
        c.terminal_cyan    = "#7B9B9F"
        c.terminal_white   = "#EAEFF5"
      end,
      on_highlights = function(hl, c)
        -- Selection and cursor cues
        hl.Visual        = { bg = "#2B3040" }
        hl.CursorLine    = { bg = c.bg_highlight }
        hl.CursorLineNr  = { fg = c.magenta, bold = true }
        hl.LineNr        = { fg = "#3A3F4C" }

        -- Floating windows and borders
        hl.NormalFloat   = { bg = c.bg_highlight, fg = c.fg }
        hl.FloatBorder   = { fg = c.blue, bg = c.bg_highlight }

        -- Popup menu
        hl.Pmenu         = { bg = c.bg_highlight, fg = c.fg }
        hl.PmenuSel      = { bg = "#2B3040", fg = c.fg, bold = true }

        -- Telescope
        hl.TelescopeBorder = { fg = c.blue, bg = c.bg_highlight }
        hl.TelescopeTitle  = { fg = c.magenta, bold = true }

        -- Punctuation (subtle tint for scanability)
        hl.Delimiter = { fg = "#98A0AE" }
        hl["@punctuation.delimiter"] = { fg = "#98A0AE" }
        hl["@punctuation.bracket"]   = { fg = "#98A0AE" }
        hl["@punctuation.special"]   = { fg = "#98A0AE" }

        -- Diagnostics
        hl.DiagnosticError = { fg = c.red }
        hl.DiagnosticWarn  = { fg = c.yellow }
        hl.DiagnosticInfo  = { fg = c.blue }
        hl.DiagnosticHint  = { fg = c.cyan }
        hl.DiagnosticVirtualTextError = { fg = c.red, bg = "NONE" }
        hl.DiagnosticVirtualTextWarn  = { fg = c.yellow, bg = "NONE" }
        hl.DiagnosticVirtualTextInfo  = { fg = c.blue, bg = "NONE" }
        hl.DiagnosticVirtualTextHint  = { fg = c.cyan, bg = "NONE" }

        -- Git signs
        hl.GitSignsAdd    = { fg = c.green }
        hl.GitSignsChange = { fg = c.blue }
        hl.GitSignsDelete = { fg = c.red }

        -- Diffs
        hl.DiffAdd    = { fg = c.green, bg = "NONE" }
        hl.DiffChange = { fg = c.blue,  bg = "NONE" }
        hl.DiffDelete = { fg = c.red,   bg = "NONE" }
        hl.DiffText   = { fg = c.blue,  bg = "NONE" }

        -- Which-Key (LazyVim menu)
        hl.WhichKey         = { fg = c.magenta, bold = true }
        hl.WhichKeyGroup    = { fg = c.magenta }
        hl.WhichKeySeparator= { fg = "#98A0AE" }
        hl.WhichKeyDesc     = { fg = c.fg }
        hl.WhichKeyValue    = { fg = c.blue }

        -- Lazy.nvim UI
        hl.LazyButtonActive = { fg = c.bg, bg = c.magenta, bold = true }
        hl.LazyH1           = { fg = c.bg, bg = c.magenta, bold = true }
        hl.LazyProgressDone = { fg = c.magenta }

        -- Alpha (LazyVim dashboard)
        hl.AlphaHeader     = { fg = c.magenta, bold = true }
        hl.AlphaFooter     = { fg = "#98A0AE" }
        hl.AlphaShortcut   = { fg = c.magenta, bold = true }
        hl.AlphaButton     = { fg = c.blue }
        hl.AlphaButtons    = { fg = c.blue }
        hl.AlphaButtonText = { fg = c.blue }

        -- Generic
        hl.Title   = { fg = c.magenta, bold = true }
        hl.Special = { fg = c.blue }

        -- Statusline/tabline accents
        hl.StatusLine     = { bg = c.bg_highlight, fg = c.fg }
        hl.StatusLineNC   = { bg = c.bg_dark,      fg = c.comment }
        hl.TabLineSel     = { bg = c.bg_highlight, fg = c.magenta, bold = true }
      end,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
