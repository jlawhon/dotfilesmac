if true then
  return {}
end

return {
  -- enable catppuccin
  { "catppuccin/nvim" },

  -- Configure LazyVim to load catppuccin
  {
    "catppuccin/nvim",
    opts = {
      colorscheme = "catppuccin",
      priority = 1000,
    },
  },
}
