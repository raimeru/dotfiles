local M = {}

M.setup = function()
	local ok, alpha = pcall(require, "alpha")
	if not ok then return end
	local dashboard = require("alpha.themes.dashboard")

	-- Header
	dashboard.section.header.val = {
		" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
		" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
		" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
		" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
		" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
		" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
	}

	-- Buttons
	dashboard.section.buttons.val = {
		dashboard.button("l", "  Open Last Session", "SessionLoad"),
		dashboard.button("r", "  Recent files", "lua require('telescope.builtin').oldfiles()"),
		dashboard.button("f", "  Find File",
			[[lua require('telescope.builtin').find_files { find_command = { 'rg', '--hidden', '--files', '-g', '!.git' } }]]),
		dashboard.button("e", "  File Browser", "NvimTreeToggle"),
		dashboard.button("g", "  Find Word", "lua require('telescope.builtin').live_grep()"),
	}

	-- Footer showing number of loaded plugins
	local lazy_ok, lazy = pcall(require, "lazy")
	if lazy_ok then
		local count = #lazy.plugins()
		dashboard.section.footer.val = "⚡ " .. count .. " plugins loaded"
		dashboard.section.footer.opts.hl = "Comment"
		dashboard.section.footer.opts.position = "center"
	end

	-- Layout
	dashboard.opts.layout = {
		{ type = "padding", val = 6 },
		dashboard.section.header,
		{ type = "padding", val = 2 },
		dashboard.section.buttons,
		{ type = "padding", val = 1 },
		dashboard.section.footer,
	}

	alpha.setup(dashboard.opts)
end

return M

