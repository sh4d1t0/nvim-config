return function()
  local indentBlankline = require("ibl")

  if not indentBlankline then
    print("Ident Blankline not found")
    return
  end

  local highlight = {
    "CursorColumn",
    "Whitespace",
  }

  indentBlankline.setup({
    indent = {
      highlight = highlight,
      char = "",
    },
    whitespace = {
      highlight = highlight,
      remove_blankline_trail = true,
    },
    scope = {
      enabled = false,
    }
  })
end
