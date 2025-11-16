--- Autocmds are automatically loaded on the VeryLazy event
--- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
---
--- Add any additional autocmds here
--- with `vim.api.nvim_create_autocmd`
---
--- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
--- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Auto change directory to current buffer's directory
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    -- Skip for oil buffers
    if vim.bo.filetype == "oil" then
      return
    end

    -- Check if the buffer has a valid file path
    local filepath = vim.fn.expand("%:p:h")
    if filepath ~= "" and vim.fn.isdirectory(filepath) == 1 then
      vim.cmd("lcd " .. filepath)
    end
  end,
})
