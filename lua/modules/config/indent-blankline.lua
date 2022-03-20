return function()
	local indentBlankline = require("indent_blankline")

	if not indentBlankline then
		print("Ident Blankline not found")
		return
	end

	indentBlankline.setup({
		-- for example, context is off by default, use this to turn it on
		space_char_blankline = " ",
		show_current_context = true,
		show_current_context_start = true,
	})
end
