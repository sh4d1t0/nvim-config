local M = {}

M.setup = function()
	local null_ls = require("null-ls")
	if not null_ls then
		print("null-ls not found")
		return
	end

	local format = null_ls.builtins.formatting
	local diagnostic = null_ls.builtins.diagnostics

	null_ls.setup({
		sources = {
			--diagnostic.eslint,
			diagnostic.stylelint,
			diagnostic.vint,
			--diagnostic.zsh,
			format.phpcsfixer,
			format.prettier.with({
				prefer_local = "node_modules/.bin",
				-- milliseconds to preformat on save
				timeout = 10000,
			}),
			--format.rustywind,
			format.stylua,
		},
	})
end

return M
