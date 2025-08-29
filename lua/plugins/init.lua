-- NOTE: for installing lazy package manager
require 'plugins.lazy_nvim'

require('lazy').setup({
  require 'plugins.lualine',
  require 'plugins.cmp_autocompletion',
  require 'plugins.comment',
  require 'plugins.gitsigns',
  require 'plugins.conform',
  require 'plugins.harpoon',
  require 'plugins.indent_blank_line',
  require 'plugins.lazydev',
  require 'plugins.nvim_lspconfig',
  require 'plugins.nvim_treesitter',
  require 'plugins.telescope',
  require 'plugins.todo_comments',
  require 'plugins.themes',
  require 'plugins.toggle_terminal',
  { 'kkoomen/vim-doge' },
  { 'mbbill/undotree' },
  { 'MunifTanjim/nui.nvim' },
  { 'nvim-lua/plenary.nvim' },
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
