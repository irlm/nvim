return {
  -- Render markdown inline (headings, bold, code blocks, tables, etc.)
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    ft = { "markdown", "Avante" },
    keys = {
      { "<leader>mr", "<cmd>RenderMarkdown toggle<cr>", desc = "Toggle Markdown Render" },
    },
    opts = {},
  },

  -- Live preview in browser (C-a p to toggle)
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = "cd app && npm install",
    keys = {
      { "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview" },
    },
  },
}
