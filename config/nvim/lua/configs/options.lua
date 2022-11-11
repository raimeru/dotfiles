local opt = vim.opt

local options = {
  cursorline = true,
  mouse = "a",
  number = true,
  showmode = false,
  sidescrolloff = 10,
  signcolumn = "yes",
  termguicolors = true,
  wrap = false,
  expandtab = false,
  shiftwidth = 2,
  softtabstop = 2,
  tabstop = 2,
}

for k, v in pairs(options) do
  opt[k] = v
end

local g = vim.g

g.mapleader = " "

local disabled_built_ins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
  g["loaded_" .. plugin] = 1
end
