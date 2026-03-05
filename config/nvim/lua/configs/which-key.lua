local wk = require("which-key")

local M = {}

function M.setup()
	wk.setup({})

	-- General actions
	wk.register({
		w = { "<cmd>w<cr>", "Save" },
		q = { "<cmd>q<cr>", "Quit" },
		qf = { "<cmd>q!<cr>", "Force Quit" },
		qa = { "<cmd>qall!<cr>", "Quit All" },
	})

	-- Leader key mappings
	wk.register({
		-- Files & Search
		f = {
			name = "Find",
			f = { "<cmd>Telescope find_files<cr>", "Find Files" },
			g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
			r = { "<cmd>Telescope oldfiles<cr>", "Recent Files" },
			h = { "<cmd>Telescope help_tags<cr>", "Help Tags" },
			c = { "<cmd>Telescope colorscheme<cr>", "Colorscheme" },
			m = { function() vim.lsp.buf.format() end, "Format File" },
		},

		-- Session management
		s = {
			name = "Session",
			s = { "<cmd>Autosession save<cr>", "Save Session" },
			l = { "<cmd>Autosession restore<cr>", "Load Session" },
		},

		-- Plugins
		p = {
			name = "Plugins",
			p = { "<cmd>Lazy profile<cr>", "Profile" },
			s = { "<cmd>Lazy sync<cr>", "Sync" },
			u = { "<cmd>Lazy update<cr>", "Update" },
			l = { "<cmd>Lazy<cr>", "Lazy UI" },
		},

		-- Buffers / Tabs
		b = {
			name = "Buffers",
			b = { "<cmd>BufferLinePick<cr>", "Pick Buffer" },
			c = { "<cmd>BufferLineClose<cr>", "Close Buffer" },
			n = { "<cmd>BufferLineCycleNext<cr>", "Next Buffer" },
			p = { "<cmd>BufferLineCyclePrev<cr>", "Prev Buffer" },
		},

		-- LSP
		l = {
			name = "LSP",
			r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename Symbol" },
			a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
			d = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
			f = { function() vim.lsp.buf.format() end, "Format File" },
		},

		-- Git
		g = {
			name = "Git",
			s = { "<cmd>Gitsigns stage_buffer<cr>", "Stage Buffer" },
			u = { "<cmd>Gitsigns undo_stage_hunk<cr>", "Undo Stage Hunk" },
			p = { "<cmd>Gitsigns preview_hunk<cr>", "Preview Hunk" },
			b = { "<cmd>Gitsigns blame_line<cr>", "Blame Line" },
		},

	}, { prefix = "<leader>" })
end

return M
