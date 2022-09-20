return function()
  local masonlspconfig = require("mason-lspconfig")
  if not masonlspconfig then
    print("mason-lspconfig was not found")
    return
  end

  masonlspconfig.setup({
    ensure_installed = {
      "angularls",
      "cssls",
      "emmet_ls",
      "eslint",
      "graphql",
      "intelephense",
      "jsonls",
      "kotlin_language_server",
      "sumneko_lua",
      "stylelint_lsp",
      "tailwindcss",
      "tsserver",
      "volar",
    },
  })
end
