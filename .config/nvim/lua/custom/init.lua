-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--     pattern = "*",
--     command = "tabdo wincmd =",
-- })

local set = vim.opt

set.backupdir = "~/.config/nvim/tmp/backup"
set.directory = "~/.config/nvim/tmp/swap"
set.undodir = "~/.config/nvim/tmp/undo"

vim.bo.swapfile = false
