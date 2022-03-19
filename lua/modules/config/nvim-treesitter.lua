return function()
	local treesitter = require("nvim-treesitter.configs")
	local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
	if not treesitter or not parser_config then
		print("treesitter or parsers not found")
		return
	end

	treesitter.setup({
		-- Parsers
		ensure_installed = {
			"css",
			"dart",
			"graphql",
			"html",
			"javascript",
			"json",
			"kotlin",
			"lua",
			"php",
			"scss",
			"tsx",
			"typescript",
			"vim",
			"vue",
			"yaml",
		},
		sync_install = false,
		-- ignore_install = { "javascript" },
		autotag = {
			enable = true,
			-- filetypes = { "html" , "xml" },
		},
		indent = {
			enable = true,
			disable = {},
		},
		highlight = {
			enable = true,
			disable = {},
			additional_vim_regex_highlighting = false,
		},

		-- Refactor module
		refactor = {
			highlight_definitions = {
				enable = true,
				-- Set to false if you have an `updatetime` of ~100.
				clear_on_cursor_move = true,
			},
			smart_rename = {
				enable = true,
				keymaps = {
					smart_rename = "grr",
				},
			},
			navigation = {
				enable = true,
				keymaps = {
					goto_definition = "gnd",
					list_definitions = "gnD",
					list_definitions_toc = "gO",
					goto_next_usage = "<a-*>",
					goto_previous_usage = "<a-#>",
				},
			},
		},

		-- Rainbow tags
		rainbow = {
			enable = true,
			-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
			extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
			max_file_lines = nil, -- Do not enable for files with more than n lines, int
			-- colors = {}, -- table of hex strings
			-- termcolors = {} -- table of colour name strings
		},

		-- Treesitter playground
		playground = {
			enable = true,
			disable = {},
			updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
			persist_queries = false, -- Whether the query persists across vim sessions
			keybindings = {
				toggle_query_editor = "o",
				toggle_hl_groups = "i",
				toggle_injected_languages = "t",
				toggle_anonymous_nodes = "a",
				toggle_language_display = "I",
				focus_language = "f",
				unfocus_language = "F",
				update = "R",
				goto_node = "<cr>",
				show_help = "?",
			},
		},

		-- Context commentstring plugin
		context_commentstring = {
			enable = true,
		},

		-- Textobjects selection
		textobjects = {
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["ac"] = "@class.outer",
					["ic"] = "@class.inner",
				},
			},
		},
	})

	parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
end
