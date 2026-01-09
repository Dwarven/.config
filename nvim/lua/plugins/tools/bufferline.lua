return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('bufferline').setup({
      options = {
        numbers = 'none',
        close_command = 'bdelete %d',
        right_mouse_command = 'bdelete %d',
        left_mouse_command = 'buffer %d',
        middle_mouse_command = nil,
        indicator = { style = 'none' },
        buffer_close_icon = 'x',
        modified_icon = '+',
        close_icon = 'X',
        left_trunc_marker = '<',
        right_trunc_marker = '>',
        max_name_length = 30,
        max_prefix_length = 30,
        tab_size = 21,
        diagnostics = 'nvim_lsp',
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = 'thin',
        enforce_regular_tabs = false,
        always_show_bufferline = true,
      },
    })
  end,
}
