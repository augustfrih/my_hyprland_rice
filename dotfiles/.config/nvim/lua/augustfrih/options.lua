local opt = vim.opt

-- Basic settings
opt.clipboard = vim.env.SSH_CONNECTION and "" or "unnamedplus" -- Sync with system clipboard
opt.number = true                                              -- Print line number
opt.relativenumber = true                                      -- Relative line numbers
opt.winborder = 'rounded'
opt.scrolloff = 10                                             -- Theres always lines between cursor and end
opt.cursorline = true                                          -- Highlight selected line
opt.wrap = false                                               -- Dont wrap lines that go outside

-- Tabbing / Indentation
opt.shiftwidth = 2             -- number of spaces tabs takes up
opt.tabstop = 2                -- Number of spaces tabs count for
opt.expandtab = true           -- Use spaces instead of tabs
opt.grepprg = "rg --vimgrep"   -- Use ripgrep if available
opt.grepformat = "%f:%l:%c:%m" -- filename, line number, column, content

-- Visual settings
-- opt.termguicollors = true -- Enable 24-bit color
opt.colorcolumn = "100" -- Show column at 100 characters
opt.signcolumn = "yes"  -- Always show sign columns
opt.lazyredraw = false  -- redraw while executing macros

-- File handling
opt.backup = false      -- dont create backup file
opt.writebackup = false -- dont backup before overwriting
opt.swapfile = false    -- Dont create swapfiles
opt.undofile = true     -- Persistent undo
opt.autoread = true     -- Auto-reload file if changed outside

-- Set undo directory and ensure it exists
local undodir = "~/.local/share/nvim/undodir" --undo directory path
opt.undodir = vim.fn.expand(undodir)          --expand to full path
local undodir_path = vim.fn.expand(undodir)
if vim.fn.isdirectory(undodir_path) == 0 then
  vim.fn.mkdir(undodir_path, "p") --create if not exists
end
