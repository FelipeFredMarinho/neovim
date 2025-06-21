return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = "Telescope",
  opts = {
    defaults = {
      file_ignore_patterns = { "node_modules" },
      layout_config = {

      }
    },
--    config = function()
--      local tl_builtin = require("telescope.builtin")
--
--      vim.keymap.set("n", "<C-f><C-f>", tl_builtin.find_files, {})
--      vim.keymap.set("n", "<C-l><C-g>", tl_builtin.live_grep, {})
--    end
  },
}

