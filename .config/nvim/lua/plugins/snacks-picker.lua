return {
  -- https://github.com/folke/snacks.nvim/discussions/1322#discussioncomment-12460688
  "folke/snacks.nvim",
  opts = {
    picker = {
      hidden = true,
      ignored = true,
      sources = {
        files = {
          hidden = true,
          ignored = true,
        },
        buffers = {
          hidden = true,
          ignored = true,
        },
      },
    },
  },
}
