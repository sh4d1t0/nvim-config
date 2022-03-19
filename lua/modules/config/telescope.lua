return function()
	local telescope = require("telescope")
	local actions = require("telescope.actions")
	if not telescope or not actions then
		print("telescope or actions not found")
		return
	end

	telescope.setup({
		defaults = {
			prompt_prefix = "❯ ",
			selection_caret = "❯ ",
			layout_config = { horizontal = { preview_width = 0.5 } },
			file_ignore_patterns = { "node_modules/.*", "%.env" },
			mappings = {
				i = {
					["<C-j>"] = actions.move_selection_next,
					["<C-k>"] = actions.move_selection_previous,
				},
				n = { ["<C-c>"] = actions.close },
			},
		},
	})
end
