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
    { "<leader>ff", ":Telescope find_files<CR>" },
    --{ "<C-l><C-g>", require("telescope.builtin").live_grep },
    --{ "<leader>lg", require("telescope.builtin").live_grep },
    { "<leader>lg", ":Telescope live_grep<CR>" },
    { "<leader>ob", ":Telescope buffers<CR>" },
    --LSP
    { "<leader>rr", ":Telescope lsp_references<CR>" },
    { "<leader>rd", ":Telescope lsp_definitions<CR>" },
    { "<leader>ri", ":Telescope lsp_implementations<CR>" },
    { "<leader>rt", ":Telescope lsp_type_definitions<CR>" },
    { "<leader>O", ":Telescope lsp_document_symbols<CR>" },
    { "<leader>rO", ":Telescope lsp_dynamic_workspace_symbols<CR>" },
    { "<leader>ic", ":Telescope lsp_incoming_calls<CR>" },
    { "<leader>oc", ":Telescope lsp_outgoing_calls<CR>" },
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

