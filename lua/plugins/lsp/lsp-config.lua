return {
  "neovim/nvim-lspconfig",
  VeryLazy = true,
  dependencies = {
  "saghen/blink.cmp",
  --            { "", config = true },
  },
  event = { "BufReadPre", "BufNewFile" },
--  opts = {
--
--  }
--  config = function()
--    vim.lsp.enable "bashls"
--
--    local lspconfig = require("lspconfig")
--    -- lspconfig.bashls.setup({})
--    lspconfig.lua_ls.setup({})
--  end
}

