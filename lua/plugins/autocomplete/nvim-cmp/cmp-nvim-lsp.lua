return {
  "hrsh7th/cmp-nvim-lsp",
  opts = {
    servers = {
      bashls = {},
      clangd = {},
      cssls = {},
      gopls = {
        settings = {
          gopls = {
            hints = {
              rangeVariableTypes = true,
              parameterNames = true,
              constantValues = true,
              assignVariableTypes = true,
              compositeLiteralFields = true,
              compositeLiteralTypes = true,
              functionTypeParameters = true,
            }
          }
        }
      },
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
      ts_ls = {
        settings = {
          javascript = {
            inlayHints = {
              includeInlayEnumMemberValueHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
              includeInlayParameterNameHintsWhenArgumentMatchesName = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayVariableTypeHints = false,
            },
          },
          typescript = {
            inlayHints = {
              includeInlayEnumMemberValueHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
              includeInlayParameterNameHintsWhenArgumentMatchesName = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayVariableTypeHints = false,
            },
          },
        },
      },
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

