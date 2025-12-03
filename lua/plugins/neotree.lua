local function close_neotree_on_file_opened(_)
  require('neo-tree.command').execute { action = 'close' }
end

return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    lazy = false,
    config = function()
      require('neo-tree').setup {
        window = {
          mappings = {
            ['P'] = {
              'toggle_preview',
              config = {
                use_float = true,
              },
            },
          },
        },
        event_handlers = {
          {
            event = 'file_opened',
            handler = close_neotree_on_file_opened,
          },
        },
      }
      if vim.fn.argc() == 0 then
        vim.cmd 'Neotree'
      end
    end,
  },
}
