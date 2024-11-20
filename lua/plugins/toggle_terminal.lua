return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 20,
      direction = 'float',
      float_opts = {
        border = 'curved',
      },
    }
  end,
}
