return function()
  local status, mason = pcall(require, "mason")
  if (not status) then return end
  local status2, lspconfig = pcall(require, "mason-lspconfig")
  if (not status2) then return end

  mason.setup({
    ui = {
      icons = {
        package_pending = " ",
        package_installed = " ",
        package_uninstalled = " ﮊ",
      },

      keymaps = {
        toggle_server_expand = "<CR>",
        install_server = "i",
        update_server = "u",
        check_server_version = "c",
        update_all_servers = "U",
        check_outdated_servers = "C",
        uninstall_server = "X",
        cancel_installation = "<C-c>",
      },
    },

    max_concurrent_installers = 10,
  })

  lspconfig.setup({
    -- A list of servers to automatically install if they're not already installed. Example: { "rust_analyzer@nightly", "lua_ls" }
    -- This setting has no relation with the `automatic_installation` setting.
    ---@type string[]
    ensure_installed = {
      "angularls",
      "cssls",
      "emmet_ls",
      "eslint",
      "graphql",
      "intelephense",
      "jsonls",
      "kotlin_language_server",
      "lua_ls",
      "stylelint_lsp",
      "tailwindcss",
      "tsserver",
      "volar",
    },

    -- Whether servers that are set up (via lspconfig) should be automatically installed if they're not already installed.
    -- This setting has no relation with the `ensure_installed` setting.
    -- Can either be:
    --   - false: Servers are not automatically installed.
    --   - true: All servers set up via lspconfig are automatically installed.
    --   - { exclude: string[] }: All servers set up via lspconfig, except the ones provided in the list, are automatically installed.
    --       Example: automatic_installation = { exclude = { "rust_analyzer", "solargraph" } }
    ---@type boolean
    automatic_installation = false,

    -- See `:h mason-lspconfig.setup_handlers()`
    ---@type table<string, fun(server_name: string)>?
    handlers = nil,
  })
end
