local M = {}

M.setup = function()
  local nvim_tree_ok, nvim_tree = pcall(require, "nvim-tree")
  if not nvim_tree_ok then
    return
  end
  local tree = require("icons").tree
  local git = require("icons").git
  local folder = require("icons").folder

  nvim_tree.setup {
    disable_netrw = true,
    hijack_netrw = true,
    respect_buf_cwd = true,
    sync_root_with_cwd = true,
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
        symlink_arrow = tree.symlink_arrow,
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = true,
        },
        glyphs = {
          default = tree.default,
          symlink = tree.symlink,
          bookmark = tree.bookmark,
          folder = {
            arrow_closed = folder.arrow_closed,
            arrow_open = folder.arrow_open,
            default = folder.default,
            open = folder.open,
            empty = folder.empty,
            empty_open = folder.empty_open,
            symlink = folder.symlink,
            symlink_open = folder.symlink_open,
          },
          git = {
            unstaged = git.unstaged,
            staged = git.staged,
            unmerged = git.unmerged,
            renamed = git.renamed,
            untracked = git.untracked,
            deleted = git.deleted,
            ignored = git.ignored,
          },
        },
      },
    },
    update_focused_file = {
      enable = true,
      update_root = true,
    },
  }
end

return M
