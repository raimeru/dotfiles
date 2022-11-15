local M = {}

M.setup = function()
  local dashboard_ok, dashboard = pcall(require, "dashboard")
  if not dashboard_ok then
    return
  end
  local home = os.getenv "HOME"

  dashboard.custom_header = {
    " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
    " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
    " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
    " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
    " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
    " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
  }

  dashboard.session_directory = home .. "/.local/state/nvim/session"
  dashboard.header_pad = 6
  dashboard.center_pad = 5
  dashboard.footer_pad = 1
  dashboard.custom_center = {
    {
      icon = "  ",
      desc = "Open Last Session             ",
      action = "SessionLoad",
      shortcut = "SPC s l",
    },
    {
      icon = "  ",
      desc = "Recent files                  ",
      action = "lua require('telescope.builtin').oldfiles()",
      shortcut = "SPC f r",
    },
    {
      icon = "  ",
      desc = "Find  File                    ",
      action = "lua require('telescope.builtin').find_files { find_command = { 'rg', '--hidden', '--files', '-g', '!.git' }}",
      shortcut = "SPC f f",
    },
    {
      icon = "  ",
      desc = "File Browser                  ",
      action = "NvimTreeToggle",
      shortcut = "SPC e t",
    },
    {
      icon = "  ",
      desc = "Find  word                    ",
      action = "lua require('telescope.builtin').live_grep()",
      shortcut = "SPC f g",
    },
  }
end

return M
