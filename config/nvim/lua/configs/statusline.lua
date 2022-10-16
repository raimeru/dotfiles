local M = {}

M.setup = function()
  local lualine_ok, lualine = pcall(require, "lualine")
  if not lualine_ok then
    return
  end
  local colors = require("tokyonight.colors").setup()
  local git = require("icons").git
  local separator = require("icons").separator

  local function diff_source()
    local gitsigns = vim.b.gitsigns_status_dict
    if gitsigns then
      return {
        added = gitsigns.added,
        modified = gitsigns.changed,
        removed = gitsigns.removed,
      }
    end
  end

  local branch = {
    "b:gitsigns_head",
    icon = { git.branch },
  }

  local diff = {
    "diff",
    source = diff_source,
    symbols = {
      added = git.added,
      modified = git.modified,
      removed = git.removed,
    },
    diff_color = {
      added = { fg = colors.green },
      modified = { fg = colors.orange },
      removed = { fg = colors.red },
    },
  }

  local filename = {
    "filename",
    symbols = {
      modified = "[+]",
      readonly = "[×]",
      unnamed = "[Unnamed File]",
      newfile = "[New File]",
    },
  }

  lualine.setup {
    options = {
      icons_enabled = true,
      theme = "auto",
      component_separators = { left = separator.component_left, right = separator.component_right },
      section_separators = { left = separator.section_left, right = separator.section_right },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = true,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { branch, diff, "diagnostics" },
      lualine_c = { filename },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
  }
end

return M
