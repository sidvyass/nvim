return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v2.x',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        mappings = {
          ['h'] = 'close_node',
          ['s'] = 'open_split',
          ['v'] = 'open_vsplit',
          ['y'] = function(state)
            local node = state.tree:get_node() -- Get the selected node in Neo-tree
            local filepath = node:get_id() -- Get the full file path of the node
            vim.fn.setreg('+', filepath) -- Copy to clipboard
            print('Copied file path to clipboard: ' .. filepath)
          end,
        },
      },
      event_handlers = {
        {
          event = 'file_opened',
          handler = function()
            require('neo-tree.command').execute { action = 'close' }
          end,
        },
      },
    }
  end,
}
