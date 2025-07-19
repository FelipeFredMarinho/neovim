return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    sources = {
      --null_ls.builtins.formatting.stylua,
    },
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua.with({
          extra_args = { "--indent-type", "Spaces", "--indent-width", "2" },
        }),
        null_ls.builtins.formatting.prettier.with({
          extra_args = { "--insert-final-line" },
        }),
      },
    })
  end,
--  init = function()
--    vim.api.nvim_create_autocmd("BufWritePre", {
--      pattern = "*.lua",
--      callback = function()
--        vim.lsp.buf.format({ async = false })
--
--        local last_line = vim.fn.getline("$")
--        if last_line ~= "" then
--          vim.api.nvim_buf_set_lines(0, -1, -1, false, { "" })
--        end
--      end,
--    })
--  end,
}

