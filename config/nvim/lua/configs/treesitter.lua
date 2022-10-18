local treesitter = require "nvim-treesitter.configs"

treesitter.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "bash", "lua" },
  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
  },
}
