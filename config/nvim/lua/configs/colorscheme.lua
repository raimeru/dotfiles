local M = {}

M.setup = function()
  local tokyonight_ok, tokyonight = pcall(require, "tokyonight")
  if not tokyonight_ok then
    return
  end

  tokyonight.setup {
    style = "night",
    styles = {
      keywords = { italic = false },
    },
    lualine_bold = true,
    on_highlights = function(highlights, colors)
      highlights.NvimTreeExecFile = {
        fg = colors.green,
        bold = false,
      }
      highlights.FileExplorerBar = {
        fg = colors.black,
        bg = colors.blue,
        bold = true,
      }
    end,
  }
  vim.cmd [[ colorscheme tokyonight ]]
end

return M
