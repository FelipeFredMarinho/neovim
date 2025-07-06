return {
  "hrsh7th/cmp-nvim-lsp",
  opts = {
    servers = {
      bashls = {},
      clangd = {},
      cssls = {},
      gopls = {},
      html = {},
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }
            }
          }
        }
      },
      pyright = {},
      rust_analyzer = {},
    },
  },
  config = function(_, opts)
    local lspconfig = require('lspconfig')

    for server, config in pairs(opts.servers) do
      config.capabilities = require('cmp_nvim_lsp').default_capabilities(config.capabilities)
      lspconfig[server].setup(config)
    end
  end
}

