return {
  "mikavilpas/yazi.nvim",
  enabled = false,
  event = "VeryLazy",
  keys = {
    {
      "-",
      "<cmd>Yazi<cr>",
      desc = "Open yazi at the current file",
    },
  },
  opts = {
    keymaps = {
      show_help = "?",
    },
  },
}
