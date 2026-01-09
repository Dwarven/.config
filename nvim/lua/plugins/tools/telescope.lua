return {
  'nvim-telescope/telescope.nvim',
  enabled = false,
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-frecency.nvim',
  },
  opts = {
    defaults = {
      path_display = { 'smart' },
    },
  },
  keys = {
    { '<leader>ff', function() require('telescope.builtin').find_files() end, desc = 'Find Files' },
    { '<leader>fg', function() require('telescope.builtin').live_grep() end, desc = 'Live Grep' },
    { '<leader>fb', function() require('telescope.builtin').buffers() end, desc = 'Buffers' },
    { '<leader>fh', function() require('telescope.builtin').help_tags() end, desc = 'Help Tags' },
    { '<leader>fo', function() require('telescope.builtin').oldfiles() end, desc = 'Recent Files' },
    { '<leader>fc', function() require('telescope.builtin').commands() end, desc = 'Commands' },
    { '<leader>fk', function() require('telescope.builtin').keymaps() end, desc = 'Keymaps' },
  },
  config = function()
    require("telescope").load_extension("frecency")
  end
}
