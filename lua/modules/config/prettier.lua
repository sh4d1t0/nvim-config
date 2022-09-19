return function()
  local prettier = require("prettier")
  if not prettier then
    print("prettier not found")
    return
  end

  prettier.setup({
    cli_options = {
      -- https://prettier.io/docs/en/cli.html#--config-precedence
      config_precedence = "prefer-file", -- or "cli-override" or "file-override"
    },
  })
end
