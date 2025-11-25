local opt = vim.opt
opt.clipboard = vim.env.SSH_CONNECTION and "" or "unnamedplus" -- Sync with system clipboard
opt.expandtab = true -- Use spaces instead of tabs
opt.number = true -- Print line number 
opt.relativenumber = true -- Relative line numbers
opt.tabstop = 2 -- Number of spaces tabs count for
