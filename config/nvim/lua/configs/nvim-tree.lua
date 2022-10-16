local M = {}

M.setup = function()
  local nvim_tree_ok, nvim_tree = pcall(require, "nvim-tree")
  if not nvim_tree_ok then
    return
  end

  nvim_tree.setup {
    disable_netrw = true,
    hijack_netrw = true,
    sort_by = "case_sensitive",
    view = {
      width = 25,
      preserve_window_proportions = true,
      mappings = {
        list = {
          { key = "u", action = "dir_up" },
        },
      },
    },
    renderer = {
      indent_markers = {
        enable = true,
      },
      icons = {
        webdev_colors = true,
        git_placement = "signcolumn",
        symlink_arrow = " ➦ ",
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = true,
        },
        glyphs = {
          default = "",
          symlink = "",
          bookmark = "",
          folder = {
            arrow_closed = "",
            arrow_open = "",
            default = "",
            open = "",
            empty = "",
            empty_open = "",
            symlink = "",
            symlink_open = "",
          },
          git = {
            unstaged = "✗",
            staged = "✔",
            unmerged = "",
            renamed = "➜",
            untracked = "",
            deleted = "⁃",
            ignored = "",
          },
        },
      },
    },
  }
end

return M
