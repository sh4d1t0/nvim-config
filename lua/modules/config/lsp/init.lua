return function()
	local lspconfig = require("lspconfig")
	if not lspconfig then
		print("lspconfig was not found")
		return
	end

	require("modules.config.lsp.handlers").setup()
	require("modules.config.lsp.handlers").enable_format_on_save()
	--require("modules.config.lsp.null-ls").setup()
	require("modules.config.lsp.lsp-colors").setup()
	require("modules.config.lsp.saga").setup()

	lspconfig.angularls.setup({
		cmd = cmd,
		filetypes = {
			"html",
			"typescript",
		},
	})

	lspconfig.emmet_ls.setup({
		cmd = { "ls_emmet", "--stdio" },
		filetypes = {
			"html",
			"css",
			"less",
			"javascriptreact",
			"scss",
			"sass",
			"typescriptreact",
		},
	})

	lspconfig.eslint.setup({
		cmd = { "vscode-eslint-language-server", "--stdio" },
		filetypes = {
			"javascript",
			"javascriptreact",
			"javascript.jsx",
		},
	})

	--Enable (broadcasting) snippet capability for completion
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities.textDocument.completion.completionItem.snippetSupport = true
	lspconfig.jsonls.setup({
		capabilities = capabilities,
		--settings = {
		--  json = {
		--    schemas = require("schemastore").json.schemas(),
		--  },
		--},
	})

	lspconfig.tsserver.setup({
		cmd = { "typescript-language-server", "--stdio" },
		filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
	})
end
