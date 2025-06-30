return {
  {
    "mason-org/mason.nvim",
    VeryLazy = true,
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜ ",
          package_uninstalled = "✗",
        },
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    VeryLazy = true,
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "bashls",
        "clangd",
        "cssls",
        "gopls",
        "html",
        "lua_ls",
        "pyright",
        "rust_analyzer",
      },
    },
  },
}
