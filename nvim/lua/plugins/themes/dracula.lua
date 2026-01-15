return {
  'dracula/vim',
  enabled = false,
  config = function()
    vim.g.dracula_transparent_bg = true
    vim.cmd([[colorscheme dracula]])
    local groups = { 'Normal', 'NormalNC', 'SignColumn', 'VertSplit', 'StatusLine', 'StatusLineNC' }
    for _, group in ipairs(groups) do
      vim.api.nvim_set_hl(0, group, { bg = 'none' })
    end
  end
}
