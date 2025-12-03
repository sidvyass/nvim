return {
  'folke/sidekick.nvim',
  lazy = false,
  config = function()
    require('sidekick').setup {
      provider = 'codex',
      cli = {
        cmd = 'C:/Users/svyas/AppData/Roaming/npm/codex.cmd',
        mux = { enabled = false },
        installed = { codex = true }, -- <-- required for your version
      },
    }
  end,
}
