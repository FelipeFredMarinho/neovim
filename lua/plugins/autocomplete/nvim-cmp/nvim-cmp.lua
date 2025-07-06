return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    { "hrsh7th/cmp-buffer" }, -- source for text in buffers
    --{ "hrsh7th/cmp-cmdline" },
    { "hrsh7th/cmp-path" }, -- source for file system paths
    { "L3MON4D3/LuaSnip" }, -- snippet engine
    { "saadparwaiz1/cmp_luasnip" }, -- for autocomplete
    { "rafamadriz/friendly-snippets" }, -- useful snippets
    { "hrsh7th/cmp-nvim-lsp" }
  },
--  opts = {
--    servers = {
--      bashls = {},
--      clangd = {},
--      cssls = {},
--      gopls = {},
--      html = {},
--      lua_ls = {},
--      pyright = {},
--      rust_analyzer = {},
--    }
--  },
  config = function(_, opts)
    local cmp = require("cmp")

    local snippet = require("luasnip")
    require("luasnip.loaders.from_vscode").lazy_load()

    local cmp_icons = {
      -- lsp_kind --
      Text = "",
      Method = "󰆧",
      Function = "󰊕",
      Constructor = "",
      Field = "󰇽",
      --Variable = "󰂡",
      --Class = "󰠱",
      Interface = "",
      Module = "",
      Property = "󰜢",
      Unit = "",
      Value = "󰎠",
      Enum = "",
      Keyword = "󰌋",
      Snippet = "",
      Color = "󰏘",
      File = "󰈙",
      Reference = "",
      Folder = "󰉋",
      EnumMember = "",
      Constant = "󰏿",
      --Struct = "",
      Event = "",
      --Operator = "󰆕",
      --TypeParameter = "󰅲",
      -- vscode icons --
      --Text = '  ',
      --Method = '  ',
      --Function = '  ',
      --Constructor = '  ',
      --Field = '  ',
      Variable = '  ',
      Class = '  ',
      --Interface = '  ',
      --Module = '  ',
      --Property = '  ',
      --Unit = '  ',
      --Value = '  ',
      --Enum = '  ',
      --Keyword = '  ',
      --Snippet = '  ',
      --Color = '  ',
      --File = '  ',
      --Reference = '  ',
      --Folder = '  ',
      --EnumMember = '  ',
      --Constant = '  ',
      Struct = '  ',
      --Event = '  ',
      Operator = '  ',
      TypeParameter = '  ',
    }

    cmp.setup({
      window = {
        completion = {
          cmp.config.window.bordered(),
          completeopt = "menu,menuone,preview,noselect"
        },
        documentation = cmp.config.window.bordered()
        --{

        --}
      },
      formatting = {
        format = function(entry, vim_item)
        -- Kind icons
        vim_item.kind = string.format('%s %s', cmp_icons[vim_item.kind], vim_item.kind) -- This concatenates the icons with the name of the item kind
        -- Source
        vim_item.menu = ({
          buffer = "[Buffer]",
          nvim_lsp = "[LSP]",
          luasnip = "[LuaSnip]",
          nvim_lua = "[Lua]",
          latex_symbols = "[LaTeX]",
        })[entry.source.name]
        return vim_item
      end
      },
      snippet = {
        expand = function(args)
          snippet.lsp_expand(args.body)
        end
      },
      mapping = cmp.mapping.preset.insert({
        --['<C-p>'] = cmp.mapping.select_prev_item(),
        --['<C-n>'] = cmp.mapping.select_next_item(),
        --['<C-e>'] = cmp.mapping.abort(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<Tab>'] = cmp.mapping.confirm({ select = true }),
      }),
      -- sources for autocompletion
      sources = cmp.config.sources({
        { name = "luasnip" }, -- snippets
        { name = "buffer" }, -- text within the current buffer
        { name = "path" }, -- file system paths
        { name = "nvim_lsp" } -- 
      })
    })
--    local lspconfig = require('lspconfig')
--
--    for server, config in pairs(opts.servers) do
--      config.capabilities = require('cmp_nvim_lsp').default_capabilities(config.capabilities)
--      lspconfig[server].setup(config)
--    end
  end
}

