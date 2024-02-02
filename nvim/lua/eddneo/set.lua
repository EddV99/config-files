-- Cursor
vim.opt.guicursor = "n-v-c-i:block"

vim.g.maplocalleader = ","
vim.g.mapleader = " "

-- Relative Line Numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Four spaces instead of 8 width tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- Smart indentation
vim.opt.smartindent = true

-- Wrap text
vim.opt.wrap = true
vim.opt.textwidth = 80

-- Searching
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Better colors
vim.opt.termguicolors = true

--Scroll off limit
vim.opt.scrolloff = 8

-- Update time
vim.opt.updatetime = 50

--Color column
--vim.opt.colorcolumn = "80"

-- System Clipboard
vim.api.nvim_set_option("clipboard", "unnamed")
