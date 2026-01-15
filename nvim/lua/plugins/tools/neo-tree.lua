return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  keys = {
    { '<leader>e', '<cmd>Neotree toggle<CR>', desc = 'Toggle NeoTree' },
    { '<leader>o', '<cmd>Neotree focus<CR>', desc = 'Focus NeoTree' },
  },
  config = function()
    require('neo-tree').setup({
      popup_border_style = '',
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {},
          hide_by_pattern = {},
        },
      },
      event_handlers = {
        {
          event = 'neo_tree_window_after_open',
          handler = function()
            vim.cmd([[
              hi NeoTreeNormal guibg=NONE ctermbg=NONE
              hi NeoTreeNormalNC guibg=NONE ctermbg=NONE
              hi NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE
            ]])
          end,
        },
      },
    })
  end,
}
