-- Skip language extras on servers (detected by ~/.config/nvim/.server marker)
if vim.uv.fs_stat(vim.fn.stdpath("config") .. "/.server") then
  return {}
end

return {
  -- LazyVim language extras — each adds LSP, treesitter, formatters, linters
  { import = "lazyvim.plugins.extras.lang.rust" },
  { import = "lazyvim.plugins.extras.lang.clangd" },       -- C / C++
  { import = "lazyvim.plugins.extras.lang.java" },
  { import = "lazyvim.plugins.extras.lang.typescript" },    -- JS / TS
  { import = "lazyvim.plugins.extras.lang.json" },
  { import = "lazyvim.plugins.extras.lang.python" },
  { import = "lazyvim.plugins.extras.lang.go" },
  { import = "lazyvim.plugins.extras.lang.scala" },
  { import = "lazyvim.plugins.extras.lang.sql" },
}
