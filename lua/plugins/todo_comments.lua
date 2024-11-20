return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    signs = false,
    colors = {
      error = { '#E00909' }, -- fixme, bug, fixit, issue
      warning = { '#FBBF24' }, -- warning
      info = { '#ab1597' }, -- todo
      hint = { '#194459' }, -- note
      default = { '#7C3AED' }, -- na
      test = { '#129917' }, -- testing, passed, failed
      live = { '#00BFFF' }, -- live (new keyword)
    },
    keywords = {
      FOR_LIVE = {
        icon = ' ', -- Add an optional icon for the "live" keyword
        color = 'live', -- Reference the new "live" color defined above
        alt = { 'ALIVE', 'ACTIVE' }, -- Optional aliases for the keyword
      },
    },
  },
}

--TODO:
--NOTE:
--TESTING:
--WARNING:
--FIXME:
