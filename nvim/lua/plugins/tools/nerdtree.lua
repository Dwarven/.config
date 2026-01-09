return {
  'preservim/nerdtree',
  enabled = false,
  cmd = { 'NERDTreeToggle', 'NERDTreeFind' },
  dependencies = { 'Xuyuanp/nerdtree-git-plugin' },
  keys = {
    { 'tt', '<cmd>NERDTreeToggle<CR>', mode = 'n', desc = 'Toggle NERDTree' },
  },
  config = function()
    vim.g.NERDTreeMapUpdirKeepOpen = 'h'
    vim.g.NERDTreeMapActivateNode = 'o'
    vim.g.NERDTreeMapOpenInTab = '\\'
    vim.g.NERDTreeMapOpenInTabSilent = 'i'
    vim.g.NERDTreeMapCloseDir = 'n'
    vim.g.NERDTreeMapChangeRoot = 'l'
  end
}
