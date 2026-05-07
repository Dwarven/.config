-- Visual mode copy to system clipboard
vim.keymap.set('v', 'Y', '"+y', { noremap = true, silent = true, desc = "Copy to system clipboard" })

-- Clear search highlight
vim.keymap.set('n', '<leader><CR>', ':nohlsearch<CR>', { desc = "Clear search highlight" })

-- Buffer navigation
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = "Next buffer" })
vim.keymap.set('n', '<S-Tab>', ':bprev<CR>', { desc = "Previous buffer" })
vim.keymap.set('n', '<leader>q', ':bdelete<CR>', { desc = "Close buffer" })

-- Split window
vim.keymap.set('n', 'sh', ':set nosplitright<CR>:vsplit<CR>', { desc = "Split window left" })
vim.keymap.set('n', 'sj', ':set splitbelow<CR>:split<CR>', { desc = "Split window below" })
vim.keymap.set('n', 'sk', ':set nosplitbelow<CR>:split<CR>', { desc = "Split window above" })
vim.keymap.set('n', 'sl', ':set splitright<CR>:vsplit<CR>', { desc = "Split window right" })

-- Move between splits
vim.keymap.set('n', '<leader>h', '<C-w>h', { desc = "Go to left window" })
vim.keymap.set('n', '<leader>j', '<C-w>j', { desc = "Go to lower window" })
vim.keymap.set('n', '<leader>k', '<C-w>k', { desc = "Go to upper window" })
vim.keymap.set('n', '<leader>l', '<C-w>l', { desc = "Go to right window" })

-- Resize splits
vim.keymap.set('n', '<Up>', ':res +5<CR>', { desc = "Increase window height" })
vim.keymap.set('n', '<Down>', ':res -5<CR>', { desc = "Decrease window height" })
vim.keymap.set('n', '<Left>', ':vertical resize-5<CR>', { desc = "Decrease window width" })
vim.keymap.set('n', '<Right>', ':vertical resize+5<CR>', { desc = "Increase window width" })

-- Save/quit
vim.keymap.set('n', 'Q', ':q<CR>', { desc = "Quit" })
vim.keymap.set('n', '<leader>rc', ':e $MYVIMRC<CR>', { desc = "Open init.lua" })

-- Spell check toggle
vim.keymap.set('n', '<leader>sc', ':set spell!<CR>', { desc = "Toggle spell check" })