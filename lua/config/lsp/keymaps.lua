vim.keymap.set({ "n", "v" }, "<leader>fmt", function() vim.lsp.buf.format() end, opts)
vim.keymap.set("n", "<leader>i", function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({0}),{0}) end, opts)

local diag_state = 0
vim.keymap.set("n", "<leader>v", function()
  if diag_state == 0 then
    -- ativar virtual_text, desativar virtual_lines
    vim.diagnostic.config({
      virtual_lines = false,
      virtual_text = true,
    })
    diag_state = 1
    print("Diagnostics: virtual_text")
  elseif diag_state == 1 then
    -- desativar tudo
    vim.diagnostic.config({
      virtual_lines = false,
      virtual_text = false,
    })
    diag_state = 2
    print("Diagnostics: off")
  else
    -- ativar virtual_lines, desativar virtual_text
    vim.diagnostic.config({
      virtual_lines = true,
      virtual_text = false,
    })
    diag_state = 0
    print("Diagnostics: virtual_lines")
  end
end, { desc = "Toggle diagnostics (lines/text/off)" })

vim.keymap.set("n", "<leader>o", function() vim.diagnostic.open_float() end, opts)

