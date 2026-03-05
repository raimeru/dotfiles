local ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if not ok then
	return
end

local capabilities = cmp_lsp.default_capabilities()

vim.lsp.config("lua_ls", {
	capabilities = capabilities,
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			telemetry = {
				enable = false,
			},
		},
	},
})

vim.lsp.enable("lua_ls")

