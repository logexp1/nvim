return {
  {
    "arnamak/stay-centered.nvim",
    -- this conflicts with snacks.scroll
    enabled = false,
    opts = function()
      require("stay-centered").setup({
        allow_scroll_move = false,
      })
    end,
  },
}
