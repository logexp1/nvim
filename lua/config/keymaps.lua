-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Window functionality
local map = vim.keymap.set

require("which-key").add({
  { "t", group = "+t-prefix" },
})

-- Swap q and Q for macro recording
map("n", "q", "<Nop>", { desc = "Disabled (use Q for macros)" })
map("n", "Q", "q", { desc = "Record macro" })

map("n", "t-", "<cmd>split<cr>", { desc = "Split window horizontally" })
map("n", "t'", "<cmd>vsplit<cr>", { desc = "Split window vertically" })

map("n", "th", "<C-w>h", { desc = "Go to left window" })
map("n", "tj", "<C-w>j", { desc = "Go to lower window" })
map("n", "tk", "<C-w>k", { desc = "Go to upper window" })
map("n", "tl", "<C-w>l", { desc = "Go to right window" })

map("n", "tq", ":close<CR>", { desc = "close current window", noremap = true, silent = true })
map("n", "td", ":bdelete<CR>", { desc = "delete current window", noremap = true, silent = true })

map("n", "t=", "<C-w>=", { desc = "equalize window sizes" })

map("n", "t_", "<cmd>resize -5<cr>", { desc = "Decrease window height" })
map("n", "t+", "<cmd>resize +5<cr>", { desc = "Increase window height" })

map("n", "tc", "gcc", { desc = "Toggle comment line", remap = true })
map("v", "tc", "gc", { desc = "Togle comment selection", remap = true })

map("i", "<Esc>", "<Esc>`^", { desc = "Exit insert mode without moving cursor" })
map("n", "a", "A", { desc = "Append at end of line" })

map("n", ";", ":", { desc = "Command mode", noremap = true })
map("v", ";", ":", { desc = "Command mode", noremap = true })

map("n", "U", "<C-r>", { desc = "Redo", noremap = true })

vim.keymap.set({ "n", "i", "v" }, "<C-f>", function()
  require("snacks").picker.grep_buffers()
end, { desc = "Grep buffers" })

vim.keymap.set({ "n", "i", "v" }, "<C-b>", function()
  vim.cmd("buffer #")
end, { desc = "Switch to last buffer" })
