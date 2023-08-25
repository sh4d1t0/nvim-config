return function()
  local symbolsOutline = require("symbols-outline")

  if not symbolsOutline then
    print("Symbols Outline not found")
    return
  end

  symbolsOutline.setup()
end
