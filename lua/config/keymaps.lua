-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Window functionality
local map = vim.keymap.set

map("n", "t-", "<cmd>split<cr>", { desc = "Split window horizontally" })
map("n", "t'", "<cmd>vsplit<cr>", { desc = "Split window vertically" })

map("n", "th", "<C-w>h", { desc = "Go to left window" })
map("n", "tj", "<C-w>j", { desc = "Go to lower window" })
map("n", "tk", "<C-w>k", { desc = "Go to upper window" })
map("n", "tl", "<C-w>l", { desc = "Go to right window" })

map("n", "tq", "<C-w>q", { desc = "close current window" })

map("n", "t=", "<C-w>=", { desc = "equalize window sizes" })

map("n", "t_", "<cmd>resize -5<cr>", { desc = "Decrease window height" })
map("n", "t+", "<cmd>resize +5<cr>", { desc = "Increase window height" })

map("n", "tc", "gcc", { desc = "Toggle comment line", remap = true })
map("v", "tc", "gc", { desc = "Togle comment selection", remap = true })

map("i", "<Esc>", "<Esc>`^", { desc = "Exit insert mode without moving cursor" })
map("n", "a", "A", { desc = "Append at end of line" })

map("n", ";", ":", { desc = "Command mode" })
map("v", ";", ":", { desc = "Command mode" })

map("n", "U", "<C-r>", { desc = "Redo" })
