--vim.lsp.config("lua_ls", {
--  settings = {
--    Lua = {
--      diagnostics = {
--        globals = { "vim" }
--      }
--    }
--  }
--})
--
--vim.lsp.enable({
--  "bashls",
----  "gopls",
--  "lua_ls",
----  "pyright",
----  "rust-analyzer",
--})

vim.diagnostic.config({
  virtual_lines = true,
  virtual_text = false,
  underline = true,
  update_in_insert = true,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚 ",
      [vim.diagnostic.severity.WARN] = "󰀪 ",
      [vim.diagnostic.severity.INFO] = "󰋽 ",
      [vim.diagnostic.severity.HINT] = "󰌶 ",
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = "ErrorMsg",
      [vim.diagnostic.severity.WARN] = "WarningMsg",
    },
  },
})

