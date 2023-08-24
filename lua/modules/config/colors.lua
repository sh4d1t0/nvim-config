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
    compile = false, -- enable compile the colorschemes
		undercurl = true, -- enable undercurls
		commentStyle = {italic = true},
		functionStyle = {},
		keywordStyle = {italic = true},
		statementStyle = {bold = true},
		typeStyle = {},
		transparent = true, -- do not set background color
		dimInactive = false, -- dim inactive window `:h hl-NormalNC`
    terminalColors = true, -- define vim.g.terminal_color_{0,17}
		colors = {
      palette = {},
      theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
		overrides =  function(colors) -- add/modify highlights
        local theme = colors.theme
    return {
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
        FloatTitle = { bg = "none" },

        -- Save an hlgroup with dark background and dimmed foreground
        -- so that you can use it where your still want darker windows.
        -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

        -- Popular plugins that open floats will link to NormalFloat by default;
        -- set their background accordingly if you wish to keep them dark and borderless
        LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
    }
    end,
    theme = "wave", -- Load "wave" theme when 'background' option is not set
    background = { -- map the value of 'background' option to a theme
        --dark = "wave", -- try "dragon" !
        --light = "lotus"
    },
	})

	-- Nightfox Config --
	nightfox.setup({
    options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,     -- Disable setting background
    terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,    -- Non focused panes set to alternative background
    module_default = true,   -- Default enable value for modules
    colorblind = {
      enable = false,        -- Enable colorblind support
      simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
      severity = {
        protan = 0,          -- Severity [0,1] for protan (red)
        deutan = 0,          -- Severity [0,1] for deutan (green)
        tritan = 0,          -- Severity [0,1] for tritan (blue)
      },
    },
    styles = {               -- Style to be applied to different syntax groups
      comments = "NONE",     -- Value is any valid attr-list value `:help attr-list`
      conditionals = "NONE",
      constants = "NONE",
      functions = "NONE",
      keywords = "NONE",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {},
  specs = {},
  groups = {},
  })

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
