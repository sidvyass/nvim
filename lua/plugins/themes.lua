return {
  -- Tokyonight configuration
  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      require('tokyonight').setup {
        style = 'storm',
        transparent = true,
        terminal_colors = false,
        styles = {
          comments = { italic = true },
          keywords = { italic = false },
          functions = {},
          variables = {},
          sidebars = 'dark',
          floats = 'dark',
        },
        dim_inactive = true,
        lualine_bold = true,
        on_colors = function(colors)
          -- colors.bg = '#000000' -- Set background to pitch black
        end,
        on_highlights = function(hl, c)
          hl.Normal = { bg = 'none' }
        end,
      }
      vim.cmd.colorscheme 'tokyonight'
    end,
  },
}
