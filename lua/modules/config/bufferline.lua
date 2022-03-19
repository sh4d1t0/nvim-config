return function()
	local bufferline = require("bufferline")
	if not bufferline then
		print("bufferline not found")
		return
	end

	bufferline.setup({
		options = {
			mode = "buffers", -- set to "tabs" to only show tabpages instead
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(count, level, diagnostics_dict, context)
				local s = " "
				for e, n in pairs(diagnostics_dict) do
					local sym = e == "error" and " " or (e == "warning" and " " or "")
					s = s .. n .. sym
				end
				return s
			end,
		},
	})
end
