return {
  'folke/tokyonight.nvim',
  priority = 1000, -- Make sure to load this before all other start plugins.
  config = function()
    require('tokyonight').setup {
      style = 'storm', -- Set to 'night' for dark mode. Other options: 'storm', 'moon', 'day'.
      transparent = true, -- Enable transparency by not setting a background color.
      terminal_colors = false, -- Set terminal colors (e.g., g:terminal_color_0).
      styles = {
        comments = { italic = true }, -- Italicize comments.
        keywords = { italic = false }, -- No italics for keywords.
        functions = {}, -- Default styling for functions.
        variables = {}, -- Default styling for variables.
        sidebars = 'dark', -- Sidebar like NvimTree gets a darker background.
        floats = 'dark', -- Floating windows get a darker background.
      },
      dim_inactive = true, -- Dim the background color of inactive windows.
      lualine_bold = true, -- Makes the section headers in lualine bold.
      on_colors = function(colors)
        -- You can override specific colors here if needed
        -- Example: colors.bg = "#1a1b26"  -- Custom dark background
      end,
      on_highlights = function(hl, c)
        -- You can override specific highlight groups here
        -- Example: hl.Comment = { fg = "#FF8800", italic = true }  -- Custom comment color
      end,
    }

    -- Load the colorscheme
    vim.cmd.colorscheme 'tokyonight'

    -- Optional: Configure additional highlight groups
    vim.cmd.hi('Comment', 'gui=italic') -- Make comments italic
  end,
}
