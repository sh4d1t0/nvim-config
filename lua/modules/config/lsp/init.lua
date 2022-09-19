return function()
  local lspconfig = require("lspconfig")
  if not lspconfig then
    print("lspconfig was not found")
    return
  end

  require("modules.config.lsp.handlers").setup()
  require("modules.config.lsp.handlers").enable_format_on_save()
  require("modules.config.lsp.null-ls").setup()
  require("modules.config.lsp.lsp-colors").setup()
  require("modules.config.lsp.saga").setup()

  local protocol = require("vim.lsp.protocol")

  -- Use an on_attach function to only map the following keys
  -- after the language server attaches to the current buffer
  local on_attach = function(client, bufnr)
    local function buf_set_keymap(...)
      vim.api.nvim_buf_set_keymap(bufnr, ...)
    end

    local function buf_set_option(...)
      vim.api.nvim_buf_set_option(bufnr, ...)
    end

    --Enable completion triggered by <c-x><c-o>
    buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

    -- Mappings.
    local opts = { noremap = true, silent = true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    --buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    --buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  end

  protocol.CompletionItemKind = {
    "", -- Text
    "", -- Method
    "", -- Function
    "", -- Constructor
    "", -- Field
    "", -- Variable
    "", -- Class
    "ﰮ", -- Interface
    "", -- Module
    "", -- Property
    "", -- Unit
    "", -- Value
    "", -- Enum
    "", -- Keyword
    "﬌", -- Snippet
    "", -- Color
    "", -- File
    "", -- Reference
    "", -- Folder
    "", -- EnumMember
    "", -- Constant
    "", -- Struct
    "", -- Event
    "ﬦ", -- Operator
    "", -- TypeParameter
  }

  -- Set up completion using nvim_cmp with LSP source
  local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

  lspconfig.angularls.setup({
    on_attach = on_attach,
    cmd = { "ngserver", "--stdio", "--tsProbeLocations", "", "--ngProbeLocations", "" },
    filetypes = {
      "html",
      "typescript",
    },
    capabilities = capabilities,
  })

  lspconfig.emmet_ls.setup({
    on_attach = on_attach,
    cmd = { "ls_emmet", "--stdio" },
    filetypes = {
      "html",
      "css",
      "less",
      "javascriptreact",
      "scss",
      "sass",
      "typescriptreact",
    },
    capabilities = capabilities,
  })

  lspconfig.eslint.setup({
    on_attach = on_attach,
    cmd = { "vscode-eslint-language-server", "--stdio" },
    filetypes = {
      "javascript",
      "javascriptreact",
      "javascript.jsx",
    },
    capabilities = capabilities,
  })

  lspconfig.sumneko_lua.setup({
    on_attach = on_attach,
    settings = {
      Lua = {
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = { 'vim' },
        },

        workspace = {
          -- Make the server aware of Neovim runtime files
          library = vim.api.nvim_get_runtime_file("", true),
          checkThirdParty = false
        },
      },
    },
  })

  lspconfig.tsserver.setup({
    on_attach = on_attach,
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
    capabilities = capabilities,
  })
end
