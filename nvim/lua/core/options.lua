vim.g.mapleader = ' '

vim.opt.encoding = 'utf-8'
vim.opt.compatible = false

vim.opt.number = true
vim.opt.cursorline = true
vim.opt.wrap = true
vim.opt.showcmd = true
vim.opt.wildmenu = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.list = true
vim.opt.listchars = { tab = '▸ ', trail = '▫' }

vim.opt.scrolloff = 5
vim.opt.backspace = { 'indent', 'eol', 'start' }
vim.opt.foldmethod = 'indent'
vim.opt.foldenable = false
vim.opt.laststatus = 2
vim.opt.autochdir = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = 'a'

vim.env.PATH = '/opt/homebrew/bin:/opt/homebrew/sbin:' .. vim.env.PATH

-- Undo / Backup
local home = os.getenv('HOME')
vim.fn.mkdir(home .. '/.config/nvim/.tmp/backup', 'p')
vim.fn.mkdir(home .. '/.config/nvim/.tmp/undo', 'p')
vim.opt.backupdir = home .. '/.config/nvim/.tmp/backup,.'
vim.opt.directory = home .. '/.config/nvim/.tmp/backup,.'
vim.opt.undofile = true
vim.opt.undodir = home .. '/.config/nvim/.tmp/undo,.'
