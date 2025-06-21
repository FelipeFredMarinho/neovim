return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Telescope",
  opts = {
    defaults = {
      file_ignore_patterns = { "node_modules" },
      layout_config = {
        preview_width = 0.6
      }
    },
  },
  keys = {
    --{ "<C-f><C-f>", require("telescope.builtin").find_files },
    --{ "<leader>ff", require("telescope.builtin").find_files },
    { "<leader>ff", "<cmd>Telescope find_files<CR>" },
    --{ "<C-l><C-g>", require("telescope.builtin").live_grep },
    --{ "<leader>lg", require("telescope.builtin").live_grep },
    { "<leader>lg", "<cmd>Telescope live_grep<CR>" },
    { "<leader>ob", "<cmd>Telescope buffers<CR>" },
    { "<leader>\"", ":Telescope registers<CR>" },
    { "<leader>\'", "<cmd>Telescope marks<CR>" },
    --LSP
    { "<leader>rr", "<cmd>Telescope lsp_references<CR>" },
    { "<leader>rd", "<cmd>Telescope lsp_definitions<CR>" },
    { "<leader>ri", "<cmd>Telescope lsp_implementations<CR>" },
    { "<leader>rt", "<cmd>Telescope lsp_type_definitions<CR>" },
    { "<C-O>", "<cmd>Telescope lsp_document_symbols<CR>" },
    { "<leader>rO", "<cmd>Telescope lsp_dynamic_workspace_symbols<CR>" },
    { "<leader>ic", "<cmd>Telescope lsp_incoming_calls<CR>" },
    { "<leader>oc", "<cmd>Telescope lsp_outgoing_calls<CR>" },
  },
  init = function()
--    vim.cmd([[
--  hi TelescopeNormal guibg=NONE ctermbg=NONE
--  hi TelescopeBorder guibg=NONE ctermbg=NONE
--  hi TelescopeTitle guibg=NONE ctermbg=NONE
--    ]])
    vim.defer_fn(function()
      vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "NONE", ctermbg = "NONE" })
      vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "NONE", ctermbg = "NONE" })
      vim.api.nvim_set_hl(0, "TelescopeTitle", { bg = "NONE", ctermbg = "NONE" })
    end, 1)
  end
}

