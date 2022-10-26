local M = {}

M.setup = function()
  local tokyonight_ok, tokyonight = pcall(require, "tokyonight")
  if not tokyonight_ok then
    return
  end

  tokyonight.setup {
    style = "night",
    lualine_bold = true,
		hide_inactive_statusline = true,
  }
  vim.cmd [[ colorscheme tokyonight ]]
end

return M
