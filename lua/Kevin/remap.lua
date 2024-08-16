vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Remap Ctrl+v to paste from the system clipboard in normal mode
vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true, silent = true })

-- Remap Ctrl+v to paste from the system clipboard in insert mode
vim.api.nvim_set_keymap('i', '<C-v>', '<C-r>+', { noremap = true, silent = true })

-- Map Ctrl+C to copy the selected text to the system clipboard in visual mode
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })

-- Map Ctrl+C to copy the current line to the system clipboard in insert mode
vim.api.nvim_set_keymap('i', '<C-c>', '<Esc>"+yyi', { noremap = true, silent = true }) 
