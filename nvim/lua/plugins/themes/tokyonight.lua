return {
  'folke/tokyonight.nvim',
  enabled = false,
  config = function()
    require('tokyonight').setup({
      style = 'storm',
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
    sidebars = 'transparent',
    floats = 'transparent',
      },
      sidebars = { 'qf', 'help', 'NvimTree', 'undotree' },
      on_highlights = function(hl, c)
        hl.Normal = { bg = 'NONE' }
        hl.NormalNC = { bg = 'NONE' }
        hl.StatusLine = { bg = 'NONE' }
        hl.LineNr = { bg = 'NONE' }
        hl.VertSplit = { fg = c.border }
      end,
    })
    vim.cmd('colorscheme tokyonight')
  end,
}
