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
          colors.bg = '#000000' -- Set background to pitch black
        end,
        on_highlights = function(hl, c)
          hl.Normal = { bg = '#000000' }
        end,
      }
    end,
  },

  -- Catppuccin configuration
  {
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        background = { light = 'latte', dark = 'mocha' },
        transparent_background = false,
        term_colors = false,
        styles = {
          comments = { 'italic' },
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
        },
        dim_inactive = { enabled = true, shade = 'dark', percentage = 0.15 },
        color_overrides = {
          mocha = { base = '#000000', mantle = '#000000', crust = '#000000' },
        },
        custom_highlights = {
          Normal = { bg = '#000000' }, -- Apply pitch black background
        },
      }
      vim.cmd.colorscheme 'catppuccin'
    end,
  },

  -- Gruvbox configuration
  {
    'gruvbox-community/gruvbox',
    priority = 1000,
    config = function()
      vim.g.gruvbox_contrast_dark = 'medium' -- Ensure darker contrast
      -- vim.cmd.colorscheme 'gruvbox'
      vim.api.nvim_set_hl(0, 'Normal', { bg = '#000000' }) -- Set pitch black background
    end,
  },
}
