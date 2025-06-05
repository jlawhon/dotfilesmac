return {
  -- enable catppuccin
  { "catppuccin/nvim" },

  -- Configure LazyVim to load catppuccin
  {
    "catppuccin/nvim",
    opts = {
      colorscheme = "catppuccin-mocha",
      priority = 1000,
    },
  },
}
