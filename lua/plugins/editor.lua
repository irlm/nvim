return {
  -- tmux navigation (matches your tmux hjkl bindings)
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Go to left pane" },
      { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Go to lower pane" },
      { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Go to upper pane" },
      { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Go to right pane" },
    },
  },

  -- treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = vim.uv.fs_stat(vim.fn.stdpath("config") .. "/.server")
        and {
          -- Server: minimal parsers for scripts/configs
          "bash", "json", "lua", "markdown", "python", "vim", "vimdoc", "yaml", "dockerfile",
        }
        or {
          -- Workstation: full language support
          "bash", "c", "cpp", "css", "dockerfile", "go", "gomod",
          "html", "java", "javascript", "json", "lua", "markdown",
          "markdown_inline", "python", "query", "regex", "rust",
          "scala", "sql", "toml", "tsx", "typescript", "vim",
          "vimdoc", "xml", "yaml",
        },
    },
  },

  -- mason: auto-install formatters/linters (skip on servers)
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = vim.uv.fs_stat(vim.fn.stdpath("config") .. "/.server")
        and { "shellcheck", "shfmt" }
        or { "stylua", "shellcheck", "shfmt", "prettier", "pyright" },
    },
  },

  -- formatters: jq for JSON (works on servers), prettier when available
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        json = { "prettier", "jq", stop_after_first = true },
        jsonc = { "prettier", "jq", stop_after_first = true },
      },
    },
  },
}
