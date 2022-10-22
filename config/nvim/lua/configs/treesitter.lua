local M = {}

M.setup = function()
  local treesitter_ok, treesitter = pcall(require, "nvim-treesitter.configs")
  if not treesitter_ok then
    return
  end

  treesitter.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "bash", "lua" },
    -- Automatically install missing parsers when entering buffer
    auto_install = true,
    highlight = {
      -- `false` will disable the whole extension
      enable = true,
    },
  }
end

return M
