return {
  -- slim down lualine — tmux already shows time, cpu, etc.
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- left: mode + branch + filename
      opts.sections.lualine_a = { "mode" }
      opts.sections.lualine_b = { "branch" }
      opts.sections.lualine_c = { { "filename", path = 1 } }

      -- right: diagnostics + filetype + cursor position
      opts.sections.lualine_x = { "diagnostics" }
      opts.sections.lualine_y = { "filetype" }
      opts.sections.lualine_z = { "location" }
    end,
  },
}
