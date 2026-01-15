-- Visual mode copy to system clipboard
vim.keymap.set('v', 'Y', '"+y', { noremap = true, silent = true })

-- Clear search highlight
vim.keymap.set('n', '<leader><CR>', ':nohlsearch<CR>')

-- Buffer navigation
vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>')
vim.keymap.set('n', '<leader>q', ':bdelete<CR>')

-- Split window
vim.keymap.set('n', 'sh', ':set nosplitright<CR>:vsplit<CR>')
vim.keymap.set('n', 'sj', ':set splitbelow<CR>:split<CR>')
vim.keymap.set('n', 'sk', ':set nosplitbelow<CR>:split<CR>')
vim.keymap.set('n', 'sl', ':set splitright<CR>:vsplit<CR>')

-- Move between splits
vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>l', '<C-w>l')

-- Resize splits
vim.keymap.set('n', '<Up>', ':res +5<CR>')
vim.keymap.set('n', '<Down>', ':res -5<CR>')
vim.keymap.set('n', '<Left>', ':vertical resize-5<CR>')
vim.keymap.set('n', '<Right>', ':vertical resize+5<CR>')

-- Tabs
vim.keymap.set('n', 'tk', ':tabe<CR>')
vim.keymap.set('n', 'th', ':-tabnext<CR>')
vim.keymap.set('n', 'tl', ':+tabnext<CR>')

-- Save/quit
vim.keymap.set('n', 'Q', ':q<CR>')
vim.keymap.set('n', '<leader>rc', ':e $MYVIMRC<CR>')

-- Spell check toggle
vim.keymap.set('n', '<leader>sc', ':set spell!<CR>')
