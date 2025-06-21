local map = vim.keymap.set
-- Basic vim
map("n", "<Space>", "<Nop>", { silent = true, remap = false })
map("n", "<C-s>", vim.cmd.w)
map("n", "<C-s><C-s>", vim.cmd.wall)
-- map("n", "<C-q>", vim.cmd.quit) -- <C-w>q does the job
map("n", "<C-q><C-q>", vim.cmd.quitall)
map("n", "<leader>ms", ":mksession! ~/.config/nvim/sessions/session.vim<CR>")
map("n", "<leader>e", vim.cmd.Ex)
map("n", "tn", vim.cmd.tabnext)
map("n", "tp", vim.cmd.tabprevious)
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })
map("n", "<leader>/", ":noh<CR>")
map("n", "<C-s>f", function()
  -- Pega a última linha do buffer
  local last_line = vim.api.nvim_buf_get_lines(0, -2, -1, false)[1] or ""
  -- Se não estiver vazia, adiciona uma linha em branco no final
  if last_line ~= "" then
    vim.api.nvim_buf_set_lines(0, -1, -1, false, { "" })
  end
  vim.cmd("write")
end, { desc = "Adicionar linha final vazia" })

map('n', 'K', function() vim.lsp.buf.hover { border = "rounded", max_height = 25, max_width = 120 } end, { desc = "Hover documentation" })

