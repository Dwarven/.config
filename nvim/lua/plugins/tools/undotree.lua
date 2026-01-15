return {
  'mbbill/undotree',
  cmd = 'UndotreeToggle',
  keys = {
    { 'L', '<cmd>UndotreeToggle<CR>', mode = 'n', desc = 'Toggle Undotree' },
  },
  config = function()
    vim.g.undotree_DiffAutoOpen = 1
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.g.undotree_ShortIndicators = 1
    vim.g.undotree_WindowLayout = 2
    vim.g.undotree_DiffpanelHeight = 8
    vim.g.undotree_SplitWidth = 24
  end
}
