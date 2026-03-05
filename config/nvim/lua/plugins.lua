local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

	{ "neovim/nvim-lspconfig" },

	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-buffer",
			"saadparwaiz1/cmp_luasnip",
			"L3MON4D3/LuaSnip",
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = "BufRead",
		config = function()
			require("configs.treesitter").setup()
		end,
	},

	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("configs.gitsigns").setup()
		end,
	},

	{
		"folke/tokyonight.nvim",
		event = "BufEnter",
		config = function()
			require("configs.colorscheme").setup()
		end,
	},

	{
		"nvim-lualine/lualine.nvim",
		event = "BufEnter",
		config = function()
			require("configs.statusline").setup()
		end,
	},

	{
		"akinsho/bufferline.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("configs.bufferline").setup()
		end,
	},

	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		cmd = {
			"NvimTreeToggle",
			"NvimTreeOpen",
			"NvimTreeClose",
			"NvimTreeFindFile",
		},
		config = function()
			require("configs.nvim-tree").setup()
		end,
	},

	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-fzf-native.nvim",
		},
		config = function()
			require("configs.telescope").setup()
		end,
	},

	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
	},

	{
		"folke/which-key.nvim",
		config = function()
			require("configs.which-key").setup()
		end,
	},

	{
		"goolord/alpha-nvim",
		event = "VimEnter",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("configs.dashboard").setup()
		end,
	},

})
