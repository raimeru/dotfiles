-- Pull in the wezterm API
local wezterm = require "wezterm"

local prefix = os.getenv("PREFIX")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- Spawn a shell in login mode
config.default_prog = { prefix .. "/bin/zsh", "-l" }

-- For example, changing the initial geometry for new windows:
--config.initial_cols = 120
--config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font = wezterm.font "SauceCodePro Nerd Font"
config.font_size = 15

config.color_scheme = "Tokyo Night"

config.enable_tab_bar = false

config.keys = {
  {
    key = 'Enter',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SpawnCommandInNewWindow,
  },
}

-- Finally, return the configuration to wezterm:
return config