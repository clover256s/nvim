return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "c", "rust", "toml", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
      sync_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
