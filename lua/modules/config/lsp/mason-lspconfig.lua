return function()
	local masonlspconfig = require("mason-lspconfig")
	if masonlspconfig then
		print("manson-lspconfig was not found")
		return
	end

	masonlspconfig.setup({
		ensure_installed = {
			"angularls",
			"cssls",
			"emmet_ls",
			"eslint",
			"graphql",
			"intelephense",
			"jsonls",
			"kotlin_language_server",
			"sumneko_lua",
			"stylelint_lsp",
			"stylua",
			"tailwindcss",
			"tsserver",
			"volar",
		},
	})
end