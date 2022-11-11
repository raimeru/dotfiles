local M = {}

local which_key = require "which-key"

M.setup = function()
  which_key.register {
    w = { "<cmd> w <cr>", "Save" },
    q = { "<cmd> q <cr>", "Quit" },
    qf = { "<cmd> q! <cr>", "Force Quit" },
    qa = { "<cmd> qall! <cr>", "Quit All" },

    ["<leader>s"] = {
      s = { "<cmd> SessionSave <cr>", "Save Session" },
      l = { "<cmd> SessionLoad <cr>", "Load Session" },
    },
    ["<leader>f"] = {
      name = "Find",
      f = { "<cmd> lua require('telescope.builtin').find_files() <cr>", "Files" },
      g = { "<cmd> lua require('telescope.builtin').live_grep() <cr>", "Live Grep" },
      r = { "<cmd> lua require('telescope.builtin').oldfiles() <cr>", "Recent Files" },
      h = { "<cmd> lua require('telescope.builtin').help_tags() <cr>", "Help" },
      c = { "<cmd> lua require('telescope.builtin').colorscheme() <cr>", "Colorscheme" },
    },
    p = {
      name = "Packer",
      p = { "<cmd> PackerProfile <cr>", "Profile" },
      c = { "<cmd> PackerCompile <cr>", "Compile" },
      i = { "<cmd> PackerInstall <cr>", "Install" },
      l = { "<cmd> PackerClean <cr>", "Clean" },
      s = { "<cmd> PackerSync <cr>", "Sync" },
      u = { "<cmd> PackerUpdate <cr>", "Update" },
    },
  }
end

return M
