local M = {}

M.setup = function()
  local lspsaga = require("lspsaga")
  if not lspsaga then
    print("lspsaga not found")
    return
  end

  lspsaga.setup({
    use_saga_diagnostic_sign = true,
    -- diagnostic sign
    error_sign = "",
    warn_sign = "",
    hint_sign = "",
    infor_sign = "",
    diagnostic_header_icon = "   ",
    border_style = "round",
  })
end

return M
