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
        or {
          -- linters
          "shellcheck",
          "pyright",
          -- formatters
          "shfmt",
          "stylua",
          "prettier",
          "clang-format",
          "gofumpt",
          "goimports",
          "google-java-format",
          "ruff",
          "sql-formatter",
          "taplo",
        },
    },
  },

  -- formatters per language (Mason auto-installs the binaries above)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- web / markup
        css = { "prettier" },
        html = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        json = { "prettier", "jq", stop_after_first = true },
        jsonc = { "prettier", "jq", stop_after_first = true },
        markdown = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        yaml = { "prettier" },
        -- languages
        c = { "clang-format" },
        cpp = { "clang-format" },
        go = { "goimports", "gofumpt" },
        java = { "google-java-format" },
        lua = { "stylua" },
        python = { "ruff_format" },
        rust = { "rustfmt" },
        scala = { "scalafmt" },
        -- config / data
        sh = { "shfmt" },
        bash = { "shfmt" },
        sql = { "sql-formatter" },
        toml = { "taplo" },
        xml = { "prettier" },
      },
    },
  },
}
