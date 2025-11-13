-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Enable visual line wrapping (like Emacs visual-line-mode)
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.showbreak = "↪ "

-- Fine-tune wrapped line display
vim.opt.breakindentopt = "shift:2,min:40,sbr"

-- Show more context around cursor
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Disable swap files (like Emacs behavior)
vim.opt.swapfile = false -- No swap files
vim.opt.backup = false -- No backup files
vim.opt.writebackup = false -- No backup before overwriting file
