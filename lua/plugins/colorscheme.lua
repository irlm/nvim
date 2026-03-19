return {
  -- add nord
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
  },

  -- set as default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord",
    },
  },
}
