-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/shadito/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/shadito/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/shadito/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/shadito/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/shadito/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\t\0\18\r\n\0&\4\r\vF\b\3\3R\bÒL\4\2\0\bÔÑ©\tÔÅ± \fwarning\tÔÅó \nerror\npairs\6  \1\1\0\6\0\n\0\0186\0\0\0'\2\1\0B\0\2\2\14\0\0\0X\1\4Ä6\1\2\0'\3\3\0B\1\2\0012\0\bÄ9\1\4\0005\3\b\0005\4\5\0003\5\6\0=\5\a\4=\4\t\3B\1\2\1K\0\1\0K\0\1\0\foptions\1\0\0\26diagnostics_indicator\0\1\0\2\tmode\fbuffers\16diagnostics\rnvim_lsp\nsetup\25bufferline not found\nprint\15bufferline\frequire\0" },
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n∏\6\0\0\b\0'\0=6\0\0\0'\2\1\0B\0\2\2\14\0\0\0X\1\4Ä6\1\2\0'\3\3\0B\1\2\1K\0\1\0009\1\4\0005\3\v\0005\4\5\0005\5\6\0=\5\a\0045\5\b\0=\5\t\0044\5\0\0=\5\n\4=\4\f\0035\4\14\0005\5\r\0=\5\15\0045\5\16\0005\6\17\0005\a\18\0=\a\19\0065\a\20\0=\a\21\6>\6\3\5=\5\22\0044\5\3\0005\6\23\0>\6\1\5=\5\24\0045\5\25\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0=\5\30\4=\4\31\0035\4 \0004\5\0\0=\5\15\0044\5\0\0=\5\22\0045\5!\0=\5\24\0045\5\"\0=\5\26\0044\5\0\0=\5\28\0044\5\0\0=\5\30\4=\4#\0034\4\0\0=\4$\0035\4%\0=\4&\3B\1\2\1K\0\1\0\15extensions\1\2\0\0\rfugitive\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\2\0\rfilename\16file_status\2\tpath\3\1\14lualine_b\fsymbols\1\0\4\tinfo\tÔëâ \nerror\tÔÜà \twarn\tÔÅ± \thint\tÔÉ´ \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\tleft\bÓÇ∏\nright\bÓÇ∫\25component_separators\1\0\2\tleft\5\nright\5\1\0\3\25always_divide_middle\2\ntheme\rnightfox\18icons_enabled\2\nsetup\22lualine not found\nprint\flualine\frequire\0" },
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1¿\tbody\15lsp_expand\v\0\2\2\0\0\0\1L\1\2\0ö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\tjump\rjumpable\21select_prev_item\fvisibleÜ\n\1\0\v\0;\0j6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\2\15\0\0\0X\3\4Ä\15\0\1\0X\3\2Ä\14\0\2\0X\3\4Ä6\3\4\0'\5\5\0B\3\2\0012\0VÄ6\3\6\0009\3\a\3'\4\t\0=\4\b\0039\3\n\0005\5\14\0005\6\f\0003\a\v\0=\a\r\6=\6\15\0055\6\22\0009\a\16\0025\t\17\0005\n\18\0=\n\19\t3\n\20\0=\n\21\tB\a\2\2=\a\23\6=\6\24\0055\6\25\0=\6\26\0059\6\27\0009\6\28\0064\b\6\0005\t\29\0>\t\1\b5\t\30\0>\t\2\b5\t\31\0>\t\3\b5\t \0>\t\4\b5\t!\0>\t\5\bB\6\2\2=\6\28\0055\6$\0009\a\"\0009\a#\aB\a\1\2=\a%\0069\a\"\0009\a&\aB\a\1\2=\a'\0069\a\"\0009\a(\a)\t¸ˇB\a\2\2=\a)\0069\a\"\0009\a(\a)\t\4\0B\a\2\2=\a*\0069\a\"\0009\a+\aB\a\1\2=\a,\0069\a\"\0009\a-\a5\t0\0009\n.\0009\n/\n=\n1\tB\a\2\2=\a2\0069\a\"\0009\a3\aB\a\1\2=\a4\0069\a\"\0003\t5\0005\n6\0B\a\3\2=\a7\0069\a\"\0003\t8\0005\n9\0B\a\3\2=\a:\6=\6\"\5B\3\2\0012\0\0ÄK\0\1\0K\0\1\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\14<C-Space>\rcomplete\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\1\0\1\tname\nemoji\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\fsources\vconfig\17experimental\1\0\2\15ghost_text\2\16native_menu\1\15formatting\vformat\1\0\0\vbefore\0\15symbol_map\1\0\25\14Interface\bÔÉ®\14Reference\bÔúÜ\nClass\bÔ¥Ø\tFile\bÔúò\rVariable\bÔî™\nColor\bÔ£ó\nField\bÔ∞†\rConstant\bÔ£æ\16Constructor\bÔê£\rFunction\bÔûî\vMethod\bÔö¶\tText\bÔùæ\fSnippet\bÔëè\18TypeParameter\5\fKeyword\bÔ†ä\rOperator\bÔöî\tEnum\bÔÖù\nEvent\bÔÉß\nValue\bÔ¢ü\vStruct\bÔ≠Ñ\tUnit\bÔ•¨\rProperty\bÔ∞†\15EnumMember\bÔÖù\vModule\bÔíá\vFolder\bÔùä\1\0\2\tmode\16symbol_text\vpreset\rcodicons\15cmp_format\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\26menu,menuone,noselect\16completeopt\bopt\bvim&cmp, luasnip or lspkind not found\nprint\flspkind\fluasnip\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n≈\1\0\0\5\0\a\0\0146\0\0\0'\2\1\0B\0\2\2\14\0\0\0X\1\4Ä6\1\2\0'\3\3\0B\1\2\1K\0\1\0009\1\4\0005\3\5\0005\4\6\0B\1\3\1K\0\1\0\1\0\t\tmode\15background\vcss_fn\2\vhsl_fn\2\vrgb_fn\2\rRRGGBBAA\2\nnames\2\vRRGGBB\2\bRGB\2\bcss\2\1\2\0\0\6*\nsetup\24colorizer not found\nprint\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils",
    url = "https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n£\1\0\1\6\1\6\0\21-\1\0\0009\2\0\0008\1\2\1\14\0\1\0X\2\1Ä4\1\0\0006\2\2\0'\4\3\0B\2\2\0029\2\1\2=\2\1\0016\2\2\0'\4\3\0B\2\2\0029\2\4\2=\2\4\1\18\4\0\0009\2\5\0\18\5\1\0B\2\3\1K\0\1\0\1¿\nsetup\14on_attach modules.config.lsp.handlers\frequire\17capabilities\tnameÎ\t\1\0\14\0002\0k6\0\0\0'\2\1\0B\0\2\2\14\0\0\0X\1\4Ä6\1\2\0'\3\3\0B\1\2\0012\0aÄ6\1\0\0'\3\4\0B\1\2\0029\1\5\1B\1\1\0016\1\0\0'\3\4\0B\1\2\0029\1\6\1B\1\1\0016\1\0\0'\3\a\0B\1\2\0029\1\5\1B\1\1\0016\1\0\0'\3\b\0B\1\2\0029\1\5\1B\1\1\0016\1\0\0'\3\t\0B\1\2\0029\1\5\1B\1\1\0015\1\15\0005\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\2=\2\16\0015\2\18\0005\3\17\0=\3\f\0025\3\19\0=\3\14\2=\2\20\0015\2\22\0005\3\21\0=\3\f\0025\3\23\0=\3\14\2=\2\24\0015\2\30\0005\3\29\0005\4\28\0006\5\0\0'\a\25\0B\5\2\0029\5\26\0059\5\27\5B\5\1\2=\5\27\4=\4\26\3=\3\31\2=\2 \0015\2(\0005\3&\0005\4$\0005\5\"\0005\6!\0=\6#\5=\5%\4=\4'\3=\3\31\2=\2)\0015\2*\0006\3+\0\18\5\2\0B\3\2\4H\6\18Ä9\b,\0\18\n\a\0B\b\2\3\15\0\b\0X\n\rÄ\18\f\t\0009\n-\tB\n\2\2\14\0\n\0X\n\bÄ6\n\2\0'\f.\0\18\r\a\0&\f\r\fB\n\2\1\18\f\t\0009\n/\tB\n\2\1F\6\3\3R\6Ï9\0030\0003\0051\0B\3\2\0012\0\0ÄK\0\1\0K\0\1\0\0\20on_server_ready\finstall\16Installing \17is_installed\15get_server\npairs\1\r\0\0\14angularls\ncssls\remmet_ls\veslint\fgraphql\17intelephense\vjsonls\27kotlin_language_server\16sumneko_lua\16tailwindcss\rtsserver\nvolar\16sumneko_lua\1\0\0\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\vjsonls\rsettings\1\0\0\1\0\0\1\0\0\fschemas\tjson\16schemastore\rtsserver\1\4\0\0\15typescript\20typescriptreact\19typescript.tsx\1\0\0\1\3\0\0\31typescript-language-server\f--stdio\reslintls\1\4\0\0\15javascript\20javascriptreact\19javascript.jsx\1\0\0\1\3\0\0\"vscode-eslint-language-server\f--stdio\remmet_ls\1\0\0\14filetypes\1\v\0\0\thtml\bcss\tscss\15javascript\20javascriptreact\15typescript\20typescriptreact\tsass\vstylus\tless\bcmd\1\0\0\1\3\0\0\rls_emmet\f--stdio\28modules.config.lsp.saga\"modules.config.lsp.lsp-colors\31modules.config.lsp.null-ls\26enable_format_on_save\nsetup modules.config.lsp.handlers\23nvim lsp not found\nprint\23nvim-lsp-installer\frequire\0" },
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nó\t\0\0\t\0-\00096\0\0\0'\2\1\0B\0\2\2\14\0\0\0X\1\4Ä6\1\2\0'\3\3\0B\1\2\1K\0\1\0009\1\4\0005\3\5\0004\4\0\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0005\5\n\0=\5\v\4=\4\f\0035\4\r\0004\5\0\0=\5\14\4=\4\15\0035\4\16\0004\5\0\0=\5\17\4=\4\18\0035\4\19\0004\5\0\0=\5\20\4=\4\21\0035\4\22\0=\4\23\0035\4\24\0005\5\25\0004\6\0\0=\6\26\5=\5\27\4=\4\28\0035\4\29\0=\4\30\0035\4 \0005\5\31\0=\5!\0045\5\"\0005\6#\0005\a%\0005\b$\0=\b&\a5\b'\0=\b(\a=\a)\6=\6*\5=\5+\4=\4,\3B\1\2\1K\0\1\0\factions\14open_file\18window_picker\fexclude\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\venable\2\1\0\2\18resize_window\1\17quit_on_open\1\15change_dir\1\0\0\1\0\2\vglobal\1\venable\2\ntrash\1\0\2\bcmd\ntrash\20require_confirm\2\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\b\vnumber\1\15signcolumn\byes\vheight\3\30\nwidth\3\30 preserve_window_proportions\1\tside\tleft\21hide_root_folder\1\19relativenumber\1\bgit\1\0\3\vignore\2\ftimeout\3Ù\3\venable\2\ffilters\vcustom\1\0\1\rdotfiles\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\1\16diagnostics\nicons\1\0\4\tinfo\bÔÅö\nerror\bÔÅó\fwarning\bÔÅ±\thint\bÔÅ™\1\0\1\venable\2\23hijack_directories\1\0\2\14auto_open\2\venable\2\23ignore_ft_on_setup\1\0\n'hijack_unnamed_buffer_when_opening\1\15update_cwd\1\18hijack_cursor\1\16open_on_tab\1\25auto_reload_on_write\2\15auto_close\2\27ignore_buffer_on_setup\1\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\1\nsetup\24telescope not found\nprint\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n–\n\0\0\b\0,\0?6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\1B\1\1\2\15\0\0\0X\2\2Ä\14\0\1\0X\2\4Ä6\2\4\0'\4\5\0B\2\2\1K\0\1\0009\2\6\0005\4\b\0005\5\a\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0004\6\0\0=\6\r\5=\5\14\0045\5\15\0004\6\0\0=\6\r\5=\5\16\0045\5\18\0005\6\17\0=\6\19\0055\6\20\0005\a\21\0=\a\22\6=\6\23\0055\6\24\0005\a\25\0=\a\22\6=\6\26\5=\5\27\0045\5\28\0=\5\29\0045\5\30\0004\6\0\0=\6\r\0055\6\31\0=\6 \5=\5!\0045\5\"\0=\5#\0045\5&\0005\6$\0005\a%\0=\a\22\6=\6'\5=\5(\4B\2\2\0019\2)\0015\3+\0=\3*\2K\0\1\0\1\3\0\0\15javascript\19typescript.tsx\27filetype_to_parsername\btsx\16textobjects\vselect\1\0\0\1\0\4\aif\20@function.inner\aaf\20@function.outer\aac\17@class.outer\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\26context_commentstring\1\0\1\venable\2\15playground\16keybindings\1\0\n\14goto_node\t<cr>\21unfocus_language\6F\19focus_language\6f\28toggle_language_display\6I\27toggle_anonymous_nodes\6a\30toggle_injected_languages\6t\21toggle_hl_groups\6i\24toggle_query_editor\6o\14show_help\6?\vupdate\6R\1\0\3\20persist_queries\1\venable\2\15updatetime\3\25\frainbow\1\0\2\18extended_mode\2\venable\2\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\21list_definitions\bgnD\20goto_definition\bgnd\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\2\25clear_on_cursor_move\2\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\vindent\fdisable\1\0\1\venable\2\fautotag\1\0\1\venable\2\21ensure_installed\1\0\1\17sync_install\1\1\16\0\0\bcss\tdart\fgraphql\thtml\15javascript\tjson\vkotlin\blua\bphp\tscss\btsx\15typescript\bvim\bvue\tyaml\nsetup$treesitter or parsers not found\nprint\23get_parser_configs\28nvim-treesitter.parsers\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n©\6\0\0\6\0$\0+6\0\0\0'\2\1\0B\0\2\2\14\0\0\0X\1\4Ä6\1\2\0'\3\3\0B\1\2\1K\0\1\0009\1\4\0005\3\"\0005\4\6\0005\5\5\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\0045\5\24\0=\5\25\0045\5\26\0=\5\27\0045\5\28\0=\5\29\0045\5\30\0=\5\31\0045\5 \0=\5!\4=\4#\3B\1\2\1K\0\1\0\roverride\1\0\0\bzsh\1\0\3\tname\bZsh\ncolor\f#428850\ticon\bÓûï\bzip\1\0\3\tname\bzip\ncolor\f#EBCB8B\ticon\bÔáÜ\axz\1\0\3\tname\axz\ncolor\f#EBCB8B\ticon\bÔáÜ\ats\1\0\3\tname\ats\ncolor\f#519ABA\ticon\bÔØ§\ttoml\1\0\3\tname\ttoml\ncolor\f#61afef\ticon\bÔÄì\bpng\1\0\3\tname\bpng\ncolor\f#BD77DC\ticon\tÔÄæ \bout\1\0\3\tname\bout\ncolor\f#C8CCD4\ticon\bÓòí\bmp4\1\0\3\tname\bmp4\ncolor\f#C8CCD4\ticon\bÔÖÑ\bmp3\1\0\3\tname\bmp3\ncolor\f#C8CCD4\ticon\bÔ¢Ö\ajs\1\0\3\tname\ajs\ncolor\f#EBCB8B\ticon\bÔ†ù\bjpg\1\0\3\tname\bjpg\ncolor\f#BD77DC\ticon\tÔÄæ \tjpeg\1\0\3\tname\tjpeg\ncolor\f#BD77DC\ticon\tÔÄæ \thtml\1\0\3\tname\thtml\ncolor\f#DE8C92\ticon\bÔÑª\bcss\1\0\0\1\0\3\tname\bcss\ncolor\f#61afef\ticon\bÓùâ\nsetup nvim-web-devicons not found\nprint\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["shade.nvim"] = {
    config = { "\27LJ\2\nÿ\1\0\0\5\0\b\0\0156\0\0\0'\2\1\0B\0\2\2\14\0\0\0X\1\4Ä6\1\2\0'\3\3\0B\1\2\1K\0\1\0009\1\4\0005\3\5\0005\4\6\0=\4\a\3B\1\2\1K\0\1\0\tkeys\1\0\3\18brightness_up\v<C-Up>\vtoggle\14<Leader>s\20brightness_down\r<C-Down>\1\0\2\17opacity_step\3\1\20overlay_opacity\0032\nsetup\20shade not found\nprint\nshade\frequire\0" },
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/shade.nvim",
    url = "https://github.com/sunjon/shade.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n‚\3\0\0\t\0\27\0&6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\2\15\0\0\0X\2\2Ä\14\0\1\0X\2\4Ä6\2\3\0'\4\4\0B\2\2\1K\0\1\0009\2\5\0005\4\25\0005\5\6\0005\6\b\0005\a\a\0=\a\t\6=\6\n\0055\6\v\0=\6\f\0055\6\18\0005\a\14\0009\b\r\1=\b\15\a9\b\16\1=\b\17\a=\a\19\0065\a\21\0009\b\20\1=\b\22\a=\a\23\6=\6\24\5=\5\26\4B\2\2\1K\0\1\0\rdefaults\1\0\0\rmappings\6n\n<C-c>\1\0\0\nclose\6i\1\0\0\n<C-k>\28move_selection_previous\n<C-j>\1\0\0\24move_selection_next\25file_ignore_patterns\1\3\0\0\20node_modules/.*\n%.env\18layout_config\15horizontal\1\0\0\1\0\1\18preview_width\4\0ÄÄÄˇ\3\1\0\2\20selection_caret\t‚ùØ \18prompt_prefix\t‚ùØ \nsetup#telescope or actions not found\nprint\22telescope.actions\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/Users/shadito/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n£\1\0\1\6\1\6\0\21-\1\0\0009\2\0\0008\1\2\1\14\0\1\0X\2\1Ä4\1\0\0006\2\2\0'\4\3\0B\2\2\0029\2\1\2=\2\1\0016\2\2\0'\4\3\0B\2\2\0029\2\4\2=\2\4\1\18\4\0\0009\2\5\0\18\5\1\0B\2\3\1K\0\1\0\1¿\nsetup\14on_attach modules.config.lsp.handlers\frequire\17capabilities\tnameÎ\t\1\0\14\0002\0k6\0\0\0'\2\1\0B\0\2\2\14\0\0\0X\1\4Ä6\1\2\0'\3\3\0B\1\2\0012\0aÄ6\1\0\0'\3\4\0B\1\2\0029\1\5\1B\1\1\0016\1\0\0'\3\4\0B\1\2\0029\1\6\1B\1\1\0016\1\0\0'\3\a\0B\1\2\0029\1\5\1B\1\1\0016\1\0\0'\3\b\0B\1\2\0029\1\5\1B\1\1\0016\1\0\0'\3\t\0B\1\2\0029\1\5\1B\1\1\0015\1\15\0005\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\2=\2\16\0015\2\18\0005\3\17\0=\3\f\0025\3\19\0=\3\14\2=\2\20\0015\2\22\0005\3\21\0=\3\f\0025\3\23\0=\3\14\2=\2\24\0015\2\30\0005\3\29\0005\4\28\0006\5\0\0'\a\25\0B\5\2\0029\5\26\0059\5\27\5B\5\1\2=\5\27\4=\4\26\3=\3\31\2=\2 \0015\2(\0005\3&\0005\4$\0005\5\"\0005\6!\0=\6#\5=\5%\4=\4'\3=\3\31\2=\2)\0015\2*\0006\3+\0\18\5\2\0B\3\2\4H\6\18Ä9\b,\0\18\n\a\0B\b\2\3\15\0\b\0X\n\rÄ\18\f\t\0009\n-\tB\n\2\2\14\0\n\0X\n\bÄ6\n\2\0'\f.\0\18\r\a\0&\f\r\fB\n\2\1\18\f\t\0009\n/\tB\n\2\1F\6\3\3R\6Ï9\0030\0003\0051\0B\3\2\0012\0\0ÄK\0\1\0K\0\1\0\0\20on_server_ready\finstall\16Installing \17is_installed\15get_server\npairs\1\r\0\0\14angularls\ncssls\remmet_ls\veslint\fgraphql\17intelephense\vjsonls\27kotlin_language_server\16sumneko_lua\16tailwindcss\rtsserver\nvolar\16sumneko_lua\1\0\0\bLua\1\0\0\16diagnostics\1\0\0\fglobals\1\0\0\1\2\0\0\bvim\vjsonls\rsettings\1\0\0\1\0\0\1\0\0\fschemas\tjson\16schemastore\rtsserver\1\4\0\0\15typescript\20typescriptreact\19typescript.tsx\1\0\0\1\3\0\0\31typescript-language-server\f--stdio\reslintls\1\4\0\0\15javascript\20javascriptreact\19javascript.jsx\1\0\0\1\3\0\0\"vscode-eslint-language-server\f--stdio\remmet_ls\1\0\0\14filetypes\1\v\0\0\thtml\bcss\tscss\15javascript\20javascriptreact\15typescript\20typescriptreact\tsass\vstylus\tless\bcmd\1\0\0\1\3\0\0\rls_emmet\f--stdio\28modules.config.lsp.saga\"modules.config.lsp.lsp-colors\31modules.config.lsp.null-ls\26enable_format_on_save\nsetup modules.config.lsp.handlers\23nvim lsp not found\nprint\23nvim-lsp-installer\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n≈\1\0\0\5\0\a\0\0146\0\0\0'\2\1\0B\0\2\2\14\0\0\0X\1\4Ä6\1\2\0'\3\3\0B\1\2\1K\0\1\0009\1\4\0005\3\5\0005\4\6\0B\1\3\1K\0\1\0\1\0\t\tmode\15background\vcss_fn\2\vhsl_fn\2\vrgb_fn\2\rRRGGBBAA\2\nnames\2\vRRGGBB\2\bRGB\2\bcss\2\1\2\0\0\6*\nsetup\24colorizer not found\nprint\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n∏\6\0\0\b\0'\0=6\0\0\0'\2\1\0B\0\2\2\14\0\0\0X\1\4Ä6\1\2\0'\3\3\0B\1\2\1K\0\1\0009\1\4\0005\3\v\0005\4\5\0005\5\6\0=\5\a\0045\5\b\0=\5\t\0044\5\0\0=\5\n\4=\4\f\0035\4\14\0005\5\r\0=\5\15\0045\5\16\0005\6\17\0005\a\18\0=\a\19\0065\a\20\0=\a\21\6>\6\3\5=\5\22\0044\5\3\0005\6\23\0>\6\1\5=\5\24\0045\5\25\0=\5\26\0045\5\27\0=\5\28\0045\5\29\0=\5\30\4=\4\31\0035\4 \0004\5\0\0=\5\15\0044\5\0\0=\5\22\0045\5!\0=\5\24\0045\5\"\0=\5\26\0044\5\0\0=\5\28\0044\5\0\0=\5\30\4=\4#\0034\4\0\0=\4$\0035\4%\0=\4&\3B\1\2\1K\0\1\0\15extensions\1\2\0\0\rfugitive\ftabline\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\2\0\rfilename\16file_status\2\tpath\3\1\14lualine_b\fsymbols\1\0\4\tinfo\tÔëâ \nerror\tÔÜà \twarn\tÔÅ± \thint\tÔÉ´ \fsources\1\2\0\0\20nvim_diagnostic\1\2\0\0\16diagnostics\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23disabled_filetypes\23section_separators\1\0\2\tleft\bÓÇ∏\nright\bÓÇ∫\25component_separators\1\0\2\tleft\5\nright\5\1\0\3\25always_divide_middle\2\ntheme\rnightfox\18icons_enabled\2\nsetup\22lualine not found\nprint\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1¿\tbody\15lsp_expand\v\0\2\2\0\0\0\1L\1\2\0ö\1\0\1\3\2\4\0\21-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\vÄ-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4Ä-\1\1\0009\1\3\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\19expand_or_jump\23expand_or_jumpable\21select_next_item\fvisibleé\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\rÄ-\1\1\0009\1\2\1)\3ˇˇB\1\2\2\15\0\1\0X\2\5Ä-\1\1\0009\1\3\1)\3ˇˇB\1\2\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\1¿\tjump\rjumpable\21select_prev_item\fvisibleÜ\n\1\0\v\0;\0j6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\0\0'\4\3\0B\2\2\2\15\0\0\0X\3\4Ä\15\0\1\0X\3\2Ä\14\0\2\0X\3\4Ä6\3\4\0'\5\5\0B\3\2\0012\0VÄ6\3\6\0009\3\a\3'\4\t\0=\4\b\0039\3\n\0005\5\14\0005\6\f\0003\a\v\0=\a\r\6=\6\15\0055\6\22\0009\a\16\0025\t\17\0005\n\18\0=\n\19\t3\n\20\0=\n\21\tB\a\2\2=\a\23\6=\6\24\0055\6\25\0=\6\26\0059\6\27\0009\6\28\0064\b\6\0005\t\29\0>\t\1\b5\t\30\0>\t\2\b5\t\31\0>\t\3\b5\t \0>\t\4\b5\t!\0>\t\5\bB\6\2\2=\6\28\0055\6$\0009\a\"\0009\a#\aB\a\1\2=\a%\0069\a\"\0009\a&\aB\a\1\2=\a'\0069\a\"\0009\a(\a)\t¸ˇB\a\2\2=\a)\0069\a\"\0009\a(\a)\t\4\0B\a\2\2=\a*\0069\a\"\0009\a+\aB\a\1\2=\a,\0069\a\"\0009\a-\a5\t0\0009\n.\0009\n/\n=\n1\tB\a\2\2=\a2\0069\a\"\0009\a3\aB\a\1\2=\a4\0069\a\"\0003\t5\0005\n6\0B\a\3\2=\a7\0069\a\"\0003\t8\0005\n9\0B\a\3\2=\a:\6=\6\"\5B\3\2\0012\0\0ÄK\0\1\0K\0\1\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\14<C-Space>\rcomplete\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\1\0\0\21select_prev_item\fmapping\1\0\1\tname\nemoji\1\0\1\tname\tpath\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\fsources\vconfig\17experimental\1\0\2\15ghost_text\2\16native_menu\1\15formatting\vformat\1\0\0\vbefore\0\15symbol_map\1\0\25\14Interface\bÔÉ®\14Reference\bÔúÜ\nClass\bÔ¥Ø\tFile\bÔúò\rVariable\bÔî™\nColor\bÔ£ó\nField\bÔ∞†\rConstant\bÔ£æ\16Constructor\bÔê£\rFunction\bÔûî\vMethod\bÔö¶\tText\bÔùæ\fSnippet\bÔëè\18TypeParameter\5\fKeyword\bÔ†ä\rOperator\bÔöî\tEnum\bÔÖù\nEvent\bÔÉß\nValue\bÔ¢ü\vStruct\bÔ≠Ñ\tUnit\bÔ•¨\rProperty\bÔ∞†\15EnumMember\bÔÖù\vModule\bÔíá\vFolder\bÔùä\1\0\2\tmode\16symbol_text\vpreset\rcodicons\15cmp_format\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\26menu,menuone,noselect\16completeopt\bopt\bvim&cmp, luasnip or lspkind not found\nprint\flspkind\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n©\6\0\0\6\0$\0+6\0\0\0'\2\1\0B\0\2\2\14\0\0\0X\1\4Ä6\1\2\0'\3\3\0B\1\2\1K\0\1\0009\1\4\0005\3\"\0005\4\6\0005\5\5\0=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\0045\5\24\0=\5\25\0045\5\26\0=\5\27\0045\5\28\0=\5\29\0045\5\30\0=\5\31\0045\5 \0=\5!\4=\4#\3B\1\2\1K\0\1\0\roverride\1\0\0\bzsh\1\0\3\tname\bZsh\ncolor\f#428850\ticon\bÓûï\bzip\1\0\3\tname\bzip\ncolor\f#EBCB8B\ticon\bÔáÜ\axz\1\0\3\tname\axz\ncolor\f#EBCB8B\ticon\bÔáÜ\ats\1\0\3\tname\ats\ncolor\f#519ABA\ticon\bÔØ§\ttoml\1\0\3\tname\ttoml\ncolor\f#61afef\ticon\bÔÄì\bpng\1\0\3\tname\bpng\ncolor\f#BD77DC\ticon\tÔÄæ \bout\1\0\3\tname\bout\ncolor\f#C8CCD4\ticon\bÓòí\bmp4\1\0\3\tname\bmp4\ncolor\f#C8CCD4\ticon\bÔÖÑ\bmp3\1\0\3\tname\bmp3\ncolor\f#C8CCD4\ticon\bÔ¢Ö\ajs\1\0\3\tname\ajs\ncolor\f#EBCB8B\ticon\bÔ†ù\bjpg\1\0\3\tname\bjpg\ncolor\f#BD77DC\ticon\tÔÄæ \tjpeg\1\0\3\tname\tjpeg\ncolor\f#BD77DC\ticon\tÔÄæ \thtml\1\0\3\tname\thtml\ncolor\f#DE8C92\ticon\bÔÑª\bcss\1\0\0\1\0\3\tname\bcss\ncolor\f#61afef\ticon\bÓùâ\nsetup nvim-web-devicons not found\nprint\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nó\t\0\0\t\0-\00096\0\0\0'\2\1\0B\0\2\2\14\0\0\0X\1\4Ä6\1\2\0'\3\3\0B\1\2\1K\0\1\0009\1\4\0005\3\5\0004\4\0\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0005\5\n\0=\5\v\4=\4\f\0035\4\r\0004\5\0\0=\5\14\4=\4\15\0035\4\16\0004\5\0\0=\5\17\4=\4\18\0035\4\19\0004\5\0\0=\5\20\4=\4\21\0035\4\22\0=\4\23\0035\4\24\0005\5\25\0004\6\0\0=\6\26\5=\5\27\4=\4\28\0035\4\29\0=\4\30\0035\4 \0005\5\31\0=\5!\0045\5\"\0005\6#\0005\a%\0005\b$\0=\b&\a5\b'\0=\b(\a=\a)\6=\6*\5=\5+\4=\4,\3B\1\2\1K\0\1\0\factions\14open_file\18window_picker\fexclude\fbuftype\1\4\0\0\vnofile\rterminal\thelp\rfiletype\1\0\0\1\a\0\0\vnotify\vpacker\aqf\tdiff\rfugitive\18fugitiveblame\1\0\2\nchars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\venable\2\1\0\2\18resize_window\1\17quit_on_open\1\15change_dir\1\0\0\1\0\2\vglobal\1\venable\2\ntrash\1\0\2\bcmd\ntrash\20require_confirm\2\tview\rmappings\tlist\1\0\1\16custom_only\1\1\0\b\vnumber\1\15signcolumn\byes\vheight\3\30\nwidth\3\30 preserve_window_proportions\1\tside\tleft\21hide_root_folder\1\19relativenumber\1\bgit\1\0\3\vignore\2\ftimeout\3Ù\3\venable\2\ffilters\vcustom\1\0\1\rdotfiles\1\16system_open\targs\1\0\0\24update_focused_file\16ignore_list\1\0\2\15update_cwd\1\venable\1\16diagnostics\nicons\1\0\4\tinfo\bÔÅö\nerror\bÔÅó\fwarning\bÔÅ±\thint\bÔÅ™\1\0\1\venable\2\23hijack_directories\1\0\2\14auto_open\2\venable\2\23ignore_ft_on_setup\1\0\n'hijack_unnamed_buffer_when_opening\1\15update_cwd\1\18hijack_cursor\1\16open_on_tab\1\25auto_reload_on_write\2\15auto_close\2\27ignore_buffer_on_setup\1\18open_on_setup\1\17hijack_netrw\2\18disable_netrw\1\nsetup\24telescope not found\nprint\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n–\n\0\0\b\0,\0?6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\1B\1\1\2\15\0\0\0X\2\2Ä\14\0\1\0X\2\4Ä6\2\4\0'\4\5\0B\2\2\1K\0\1\0009\2\6\0005\4\b\0005\5\a\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0004\6\0\0=\6\r\5=\5\14\0045\5\15\0004\6\0\0=\6\r\5=\5\16\0045\5\18\0005\6\17\0=\6\19\0055\6\20\0005\a\21\0=\a\22\6=\6\23\0055\6\24\0005\a\25\0=\a\22\6=\6\26\5=\5\27\0045\5\28\0=\5\29\0045\5\30\0004\6\0\0=\6\r\0055\6\31\0=\6 \5=\5!\0045\5\"\0=\5#\0045\5&\0005\6$\0005\a%\0=\a\22\6=\6'\5=\5(\4B\2\2\0019\2)\0015\3+\0=\3*\2K\0\1\0\1\3\0\0\15javascript\19typescript.tsx\27filetype_to_parsername\btsx\16textobjects\vselect\1\0\0\1\0\4\aif\20@function.inner\aaf\20@function.outer\aac\17@class.outer\aic\17@class.inner\1\0\2\14lookahead\2\venable\2\26context_commentstring\1\0\1\venable\2\15playground\16keybindings\1\0\n\14goto_node\t<cr>\21unfocus_language\6F\19focus_language\6f\28toggle_language_display\6I\27toggle_anonymous_nodes\6a\30toggle_injected_languages\6t\21toggle_hl_groups\6i\24toggle_query_editor\6o\14show_help\6?\vupdate\6R\1\0\3\20persist_queries\1\venable\2\15updatetime\3\25\frainbow\1\0\2\18extended_mode\2\venable\2\rrefactor\15navigation\1\0\5\24goto_previous_usage\n<a-#>\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\21list_definitions\bgnD\20goto_definition\bgnd\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\2\25clear_on_cursor_move\2\venable\2\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\vindent\fdisable\1\0\1\venable\2\fautotag\1\0\1\venable\2\21ensure_installed\1\0\1\17sync_install\1\1\16\0\0\bcss\tdart\fgraphql\thtml\15javascript\tjson\vkotlin\blua\bphp\tscss\btsx\15typescript\bvim\bvue\tyaml\nsetup$treesitter or parsers not found\nprint\23get_parser_configs\28nvim-treesitter.parsers\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n‚\3\0\0\t\0\27\0&6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\2\15\0\0\0X\2\2Ä\14\0\1\0X\2\4Ä6\2\3\0'\4\4\0B\2\2\1K\0\1\0009\2\5\0005\4\25\0005\5\6\0005\6\b\0005\a\a\0=\a\t\6=\6\n\0055\6\v\0=\6\f\0055\6\18\0005\a\14\0009\b\r\1=\b\15\a9\b\16\1=\b\17\a=\a\19\0065\a\21\0009\b\20\1=\b\22\a=\a\23\6=\6\24\5=\5\26\4B\2\2\1K\0\1\0\rdefaults\1\0\0\rmappings\6n\n<C-c>\1\0\0\nclose\6i\1\0\0\n<C-k>\28move_selection_previous\n<C-j>\1\0\0\24move_selection_next\25file_ignore_patterns\1\3\0\0\20node_modules/.*\n%.env\18layout_config\15horizontal\1\0\0\1\0\1\18preview_width\4\0ÄÄÄˇ\3\1\0\2\20selection_caret\t‚ùØ \18prompt_prefix\t‚ùØ \nsetup#telescope or actions not found\nprint\22telescope.actions\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\t\0\18\r\n\0&\4\r\vF\b\3\3R\bÒL\4\2\0\bÔÑ©\tÔÅ± \fwarning\tÔÅó \nerror\npairs\6  \1\1\0\6\0\n\0\0186\0\0\0'\2\1\0B\0\2\2\14\0\0\0X\1\4Ä6\1\2\0'\3\3\0B\1\2\0012\0\bÄ9\1\4\0005\3\b\0005\4\5\0003\5\6\0=\5\a\4=\4\t\3B\1\2\1K\0\1\0K\0\1\0\foptions\1\0\0\26diagnostics_indicator\0\1\0\2\tmode\fbuffers\16diagnostics\rnvim_lsp\nsetup\25bufferline not found\nprint\15bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: shade.nvim
time([[Config for shade.nvim]], true)
try_loadstring("\27LJ\2\nÿ\1\0\0\5\0\b\0\0156\0\0\0'\2\1\0B\0\2\2\14\0\0\0X\1\4Ä6\1\2\0'\3\3\0B\1\2\1K\0\1\0009\1\4\0005\3\5\0005\4\6\0=\4\a\3B\1\2\1K\0\1\0\tkeys\1\0\3\18brightness_up\v<C-Up>\vtoggle\14<Leader>s\20brightness_down\r<C-Down>\1\0\2\17opacity_step\3\1\20overlay_opacity\0032\nsetup\20shade not found\nprint\nshade\frequire\0", "config", "shade.nvim")
time([[Config for shade.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
