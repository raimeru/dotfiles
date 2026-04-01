local wk = require("which-key")

local M = {}

local Diagnostics = function()
  vim.diagnostic.config({
    virtual_lines = true,
    virtual_text = true
  })
end
local Format = function() vim.lsp.buf.format() end

function M.setup()
  wk.add({
    { "<leader>f",  group = "Find" },
    { "<leader>fc", "<cmd>Telescope colorscheme<cr>",         desc = "Colorscheme" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>",          desc = "Find Files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>",           desc = "Live Grep" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>",           desc = "Help Tags" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>",            desc = "Recent Files" },
    { "<leader>s",  group = "Session" },
    { "<leader>sr", "<cmd>Autosession restore<cr>",           desc = "Load Session" },
    { "<leader>ss", "<cmd>Autosession save<cr>",              desc = "Save Session" },
    { "<leader>p",  group = "Plugins" },
    { "<leader>pl", "<cmd>Lazy<cr>",                          desc = "Lazy UI" },
    { "<leader>pp", "<cmd>Lazy profile<cr>",                  desc = "Profile" },
    { "<leader>ps", "<cmd>Lazy sync<cr>",                     desc = "Sync" },
    { "<leader>pu", "<cmd>Lazy update<cr>",                   desc = "Update" },
    { "<leader>b",  group = "Buffers" },
    { "<leader>bb", "<cmd>BufferLinePick<cr>",                desc = "Pick Buffer" },
    { "<leader>bc", "<cmd>BufferLineClose<cr>",               desc = "Close Buffer" },
    { "<leader>bn", "<cmd>BufferLineCycleNext<cr>",           desc = "Next Buffer" },
    { "<leader>bp", "<cmd>BufferLineCyclePrev<cr>",           desc = "Prev Buffer" },
    { "<leader>l",  group = "LSP" },
    { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
    { "<leader>ld", Diagnostics,                              desc = "Diagnostics" },
    { "<leader>lf", Format,                                   desc = "Format File" },
    { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>",      desc = "Rename Symbol" },
    { "<leader>g",  group = "Git" },
    { "<leader>gb", "<cmd>Gitsigns blame_line<cr>",           desc = "Blame Line" },
    { "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>",         desc = "Preview Hunk" },
    { "<leader>gs", "<cmd>Gitsigns stage_buffer<cr>",         desc = "Stage Buffer" },
    { "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<cr>",      desc = "Undo Stage Hunk" },
  })
end

return M
