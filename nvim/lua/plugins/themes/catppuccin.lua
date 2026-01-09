return {
  'catppuccin/nvim',
  config = function()
    require('catppuccin').setup({
      transparent_background = true,
    })
    vim.cmd('colorscheme catppuccin-mocha')
    vim.cmd([[
      hi Normal guibg=NONE ctermbg=NONE
      hi NormalNC guibg=NONE ctermbg=NONE
      hi SignColumn guibg=NONE ctermbg=NONE
      hi VertSplit guibg=NONE ctermbg=NONE
      hi StatusLine guibg=NONE ctermbg=NONE
      hi StatusLineNC guibg=NONE ctermbg=NONE
      hi LineNr guibg=NONE ctermbg=NONE
    ]])
  end,
}
