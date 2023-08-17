return function()
  local lspconfig = require("lspconfig")
  if not lspconfig then
    print("lspconfig was not found")
    return
  end

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
  local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

  local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
	}

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
    cmd = { "emmet-ls", "--stdio" },
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
    settings = {
      format = true,
    },
    capabilities = capabilities,
  })

  lspconfig.flow.setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })

  lspconfig.intelephense.setup({
    on_attach = on_attach,
    cmd = { "intelephense", "--stdio" },
    filetypes = { "php" },
    capabilities = capabilities,
  })

  lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    flags = lsp_flags,
  })

  lspconfig.sourcekit.setup({
    on_attach = on_attach,
  })

  lspconfig.lua_ls.setup({
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

  lspconfig.tailwindcss.setup({})

  lspconfig.tsserver.setup({
    on_attach = on_attach,
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    capabilities = capabilities,
  })

  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    update_in_insert = false,
    virtual_text = { spacing = 4, prefix = "●" },
    severity_sort = true,
  }
  )

  -- Diagnostic symbols in the sign column (gutter)
  local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
  end

  vim.diagnostic.config({
    virtual_text = {
      prefix = '●'
    },
    update_in_insert = true,
    float = {
      source = "always", -- Or "if_many"
    },
  })
end
