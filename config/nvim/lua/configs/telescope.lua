local M = {}

M.setup = function()
  local telescope_ok, telescope = pcall(require, "telescope")
  if not telescope_ok then
    return
  end
  local actions = require "telescope.actions.layout"

  telescope.setup {
    defaults = {
      -- Default configuration for telescope goes here:
      -- config_key = value,
      -- other layout configuration here
      sorting_strategy = "ascending",
      layout_strategy = "horizontal",
      layout_config = {
        height = 0.80,
        width = 0.85,
        horizontal = {
          preview_cutoff = 75,
          preview_width = 0.55,
          results_width = 0.70,
        },
        vertical = {
          preview_cutoff = 35,
          preview_height = 0.35,
          mirror = true,
        },
        prompt_position = "top",
      },
      path_display = { "smart" },
      prompt_prefix = "  ",
      selection_caret = " ",
      entry_prefix = " ",
      mappings = {
        i = {
          ["<C-z>"] = actions.cycle_layout_prev,
          ["<C-b>"] = actions.cycle_layout_next,

          ["<C-h>"] = "which_key",
        },
      },
    },
    pickers = {
      find_files = {
        previewer = false,
      },
    },
    extensions = {
      -- Your extension configuration goes here:
      -- extension_name = {
      --   extension_config_key = value,
      -- }
      -- please take a look at the readme of the extension you want to configure
    },
  }

  telescope.load_extension "fzf"
end

return M
