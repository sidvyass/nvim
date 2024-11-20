return {
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.dbs = {
      sandbox = 'sqlserver://@ETZ-SQL/SANDBOX?trusted_connection=true',
      live = 'sqlserver://@ETZ-SQL/ETEZAZIMIETrakLive?trusted_connection=true',
    }
  end,
}
