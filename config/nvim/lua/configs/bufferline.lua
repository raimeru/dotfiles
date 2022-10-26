local M = {}
local bufferline_ok, bufferline = pcall(require, "bufferline")
if not bufferline_ok then
  return
end

local colors = require("tokyonight.colors").setup()

M.setup = function()
  bufferline.setup {
    options = {
      mode = "tabs",
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "center",
          highlight = "Title",
          separator = true,
        },
      },
      show_duplicate_prefix = false,
      separator_style = "slant",
    },
    highlights = {
      buffer_selected = {
        italic = false,
      },
      close_button_selected = {
        fg = colors.red,
      },
      offset_separator = {
        fg = colors.bg,
        bg = colors.bg,
      },
    },
  }
end

return M
