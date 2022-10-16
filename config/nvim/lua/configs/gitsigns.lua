local gitsigns_ok, gitsigns = pcall(require, "gitsigns")
if not gitsigns_ok then
  return
end
local bold_border = require("icons").bold_border

gitsigns.setup {
  signs = {
    add = { hl = "GitSignsAdd", text = "┃", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
    change = { hl = "GitSignsChange", text = "┃", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
    delete = { hl = "GitSignsDelete", text = "▁", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
    topdelete = { hl = "GitSignsDelete", text = "▔", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
    changedelete = { hl = "GitSignsChange", text = "╍", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
  },
  signcolumn = true,
  linehl = false,
  word_diff = true,
  current_line_blame = true,
  current_line_blame_formatter = "<author> on <author_time:%Y-%m-%d %H:%M %Z> - <summary>",
  preview_config = {
    border = bold_border,
    style = "minimal",
    relative = "cursor",
    row = 1,
  },
}
