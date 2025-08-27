return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 50,
      direction = 'horizontal',
    }
  end,
}
