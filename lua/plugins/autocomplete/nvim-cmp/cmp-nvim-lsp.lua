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
--      rust_analyzer = {
--        settings = {
--          rust_analyzer = {
--            inlayHints = {
--              bindingModeHints = {
--                enable = false,
--              },
--              chainingHints = {
--                enable = true,
--              },
--              closingBraceHints = {
--                enable = true,
--                minLines = 25,
--              },
--              closureReturnTypeHints = {
--                enable = "never",
--              },
--              lifetimeElisionHints = {
--                enable = "never",
--                useParameterNames = false,
--              },
--              maxLength = 25,
--              parameterHints = {
--                enable = true,
--              },
--              reborrowHints = {
--                enable = "never",
--              },
--              renderColons = true,
--              typeHints = {
--                enable = true,
--                hideClosureInitialization = false,
--                hideNamedConstructor = false,
--              },
--            },
--          }
--        }
--      },
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
    for server, server_opts in pairs(opts.servers) do
      local capabilities = require('cmp_nvim_lsp').default_capabilities(server_opts.capabilities or vim.lsp.protocol.make_client_capabilities())

      vim.lsp.config[server] = vim.tbl_extend("force", server_opts, {
        capabilities = capabilities,
      })

      vim.lsp.enable(server)
    end
  end
}

