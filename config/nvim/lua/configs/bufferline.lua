local M = {}
local bufferline_ok, bufferline = pcall(require, "bufferline")
if not bufferline_ok then
  return
end

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
  }
end

return M
