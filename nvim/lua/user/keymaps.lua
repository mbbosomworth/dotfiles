local options = { noremap = true, silent = true }
local termopt = { silent = true }
local map = vim.api.nvim_set_keymap

-- Space as leader key
map("", "<Space>", "<Nop>", options)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Escape characters
map("i", "kj", "<ESC>", options)

-- yank to end of line with capital Y
-- map("v", "Y", "y$", options)

-- break up undo
map("i", ",", ",<C-g>u", options)
