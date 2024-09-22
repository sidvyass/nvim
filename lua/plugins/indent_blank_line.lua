return {
  'lukas-reineke/indent-blankline.nvim',
  version = 'v3.*',
  config = function()
    require('ibl').setup {
      enabled = false,
    }

    -- Keymap to toggle indent guides
  end,
}
