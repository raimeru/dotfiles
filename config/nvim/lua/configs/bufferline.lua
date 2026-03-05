local M = {}

local ok, bufferline = pcall(require, "bufferline")
if not ok then
	return
end

local colors = require("tokyonight.colors").setup()

function M.setup()
	bufferline.setup({
		options = {
			mode = "tabs",

			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					text_align = "center",
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
				bg = colors.blue,
			},
		},
	})
end

return M

