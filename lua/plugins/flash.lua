return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        char = {
          enabled = false, --disable t/f/T/F motions
        },
      },
    },
    keys = {
      {
        "ra",
        mode = { "n" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
    },
  },
}
