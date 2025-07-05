return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    { "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", desc = "reset_hunk" },
    { "<leader>gd", "<cmd>Gitsigns toggle_deleted<CR>", desc = "toggle_deleted" },
    { "<leader>gl", "<cmd>Gitsigns toggle_current_line_blame<CR>", desc = "toggle_current_line_blame" },
    { "<leader>gw", "<cmd>Gitsigns toggle_word_diff<CR>", desc = "toggle_word_diff" },
    { "<leader>gb", "<cmd>Gitsigns blame<CR>", desc = "blame" },
  },
  opts = {
    numhl = true,
    word_diff = true,
  }
}

