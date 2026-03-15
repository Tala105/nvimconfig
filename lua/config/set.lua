vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.number = true
vim.o.relativenumber = true

vim.o.showmode = false
vim.o.undofile = true

vim.o.splitright = true
vim.o.splitbelow = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.o.confirm = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.inccommand = 'split'

vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})

