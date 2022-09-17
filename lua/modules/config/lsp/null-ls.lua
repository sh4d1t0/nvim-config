local M = {}

M.setup = function()
	local null_ls = require("null-ls")
	if not null_ls then
		print("null-ls not found")
		return
	end

	local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })

	local format = null_ls.builtins.formatting
	local diagnostic = null_ls.builtins.diagnostics

	null_ls.setup({
		sources = {
			--diagnostic.eslint_d.with({
			--	diagnostics_format = "[eslint] #{m}\n(#{c})",
			--}),
			diagnostic.stylelint,
			--diagnostic.vint,
			format.phpcsfixer,
			--format.prettier.with({
			--	filetypes = { "javascript", "javascriptreact", "typescriptreact" }, -- fix this
			--	prefer_local = "node_modules/.bin",
			--	timeout = 10000,
			--}),
			format.stylua,
		},
		on_attach = function(client, bufnr)
			if client.server_capabilities.documentFormattingProvider then
				vim.api.nvim_clear_autocmds({ buffer = 0, group = augroup_format })
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = augroup_format,
					buffer = 0,
					callback = function()
						vim.lsp.buf.formatting_seq_sync()
					end,
				})
			end
		end,
	})
end

return M
