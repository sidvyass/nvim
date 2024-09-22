-- NOTE: for installing lazy package manager
require 'plugins.lazy_nvim'

require('lazy').setup({
  -- require 'plugins.avante',
  -- require 'plugins.catppuccin_theme',
  require 'plugins.tokyo_night_theme',
  require 'plugins.cmp_autocompletion',
  require 'plugins.comment',
  require 'plugins.comment_generator',
  require 'plugins.gitsigns',
  require 'plugins.conform',
  require 'plugins.harpoon',
  require 'plugins.indent_blank_line',
  require 'plugins.lazydev',
  require 'plugins.msc', -- msc plugins that do not have a config yet
  require 'plugins.mini',
  require 'plugins.neo_tree',
  require 'plugins.nvim_lspconfig',
  require 'plugins.nvim_treesitter',
  require 'plugins.telescope',
  require 'plugins.todo_comments',
  require 'plugins.which_key',
  -- lsp configs
  { 'Bilal2453/luvit-meta', lazy = true },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
