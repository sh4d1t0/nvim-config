return function()
	local lsp_installer = require("nvim-lsp-installer")
	if not lsp_installer then
		print("nvim lsp not found")
		return
	end

	require("modules.config.lsp.handlers").setup()
	require("modules.config.lsp.handlers").enable_format_on_save()
	require("modules.config.lsp.null-ls").setup()
	require("modules.config.lsp.lsp-colors").setup()
	require("modules.config.lsp.saga").setup()

	local servers_config = {
		-- https://github.com/pedro757/emmet
		-- npm i -g ls_emmet (In order to override the default emmet-ls)
		emmet_ls = {
			cmd = { "ls_emmet", "--stdio" },
			filetypes = {
				"html",
				"css",
				"scss",
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"sass",
				"stylus",
				"less",
			},
		},
		eslintls = {
			cmd = { "vscode-eslint-language-server", "--stdio" },
			filetypes = { "javascript", "javascriptreact", "javascript.jsx" },
		},
		tsserver = {
			cmd = { "typescript-language-server", "--stdio" },
			filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
		},
		jsonls = {
			settings = {
				json = {
					schemas = require("schemastore").json.schemas(),
				},
			},
		},
		sumneko_lua = {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		},
	}

	local servers = {
		"angularls",
		"cssls",
		"emmet_ls",
		"eslint",
		"graphql",
		"intelephense",
		"jsonls",
		"kotlin_language_server",
		"sumneko_lua",
		"tailwindcss",
		"tsserver",
		"volar",
	}

	for _, name in pairs(servers) do
		local server_is_found, server = lsp_installer.get_server(name)
		if server_is_found and not server:is_installed() then
			print("Installing " .. name)
			server:install()
		end
	end

	lsp_installer.on_server_ready(function(server)
		local config = servers_config[server.name] or {}
		config.capabilities = require("modules.config.lsp.handlers").capabilities
		config.on_attach = require("modules.config.lsp.handlers").on_attach
		server:setup(config)
	end)
end
