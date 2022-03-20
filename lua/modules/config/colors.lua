return function()
	local kanagawa = require("kanawaga")
	local material = require("material")
	local nightfox = require("nightfox")

	if not kanagawa or not nightfox or not material then
		print("Colorschemes not found")
		return
	end

	-- kanagawa Config --
	kanagawa.setup({
		undercurl = true, -- enable undercurls
		commentStyle = "italic",
		functionStyle = "NONE",
		keywordStyle = "italic",
		statementStyle = "bold",
		typeStyle = "NONE",
		variablebuiltinStyle = "italic",
		specialReturn = true, -- special highlight for the return keyword
		specialException = true, -- special highlight for exception handling keywords
		transparent = true, -- do not set background color
		dimInactive = false, -- dim inactive window `:h hl-NormalNC`
		globalStatus = false, -- adjust window separators highlight for laststatus=3
		colors = {},
		overrides = {},
	})

	-- Nightfox Config --
	nightfox.setup({})

	-- Material Config --
	material.setup({
		contrast = {
			sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
			floating_windows = false, -- Enable contrast for floating windows
			line_numbers = false, -- Enable contrast background for line numbers
			sign_column = false, -- Enable contrast background for the sign column
			cursor_line = true, -- Enable darker background for the cursor line
			non_current_windows = false, -- Enable darker background for non-current windows
			popup_menu = true, -- Enable lighter background for the popup menu
		},
		italics = {
			comments = true, -- Enable italic comments
			keywords = true, -- Enable italic keywords
			functions = true, -- Enable italic functions
			strings = true, -- Enable italic strings
			variables = true, -- Enable italic variables
		},
		contrast_filetypes = {
			"terminal", -- Darker terminal background
			"packer", -- Darker packer background
			"qf", -- Darker qf list background
		},
		high_visibility = {
			--lighter = false, -- Enable higher contrast text for lighter style
			darker = true, -- Enable higher contrast text for darker style
		},
		disable = {
			borders = false, -- Disable borders between verticaly split windows
			background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
			term_colors = false, -- Prevent the theme from setting terminal colors
			eob_lines = false, -- Hide the end-of-buffer lines
		},
		lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )
		async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)
		custom_highlights = {
			cursor_line = { fg = "#0000FF", gui = "underline" },
		}, -- Overwrite highlights with your own
	})
end
