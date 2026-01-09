return {
  'junegunn/fzf.vim',
  dependencies = { 'junegunn/fzf' },
  keys = {
    { '<C-f>', '<cmd>FZF<CR>', mode = 'n', desc = 'Open fzf' },
  },
  -- config = function()
  --   vim.keymap.set('n', '<C-f>', ':FZF<CR>')
  -- end
}
