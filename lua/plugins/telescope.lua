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
  },
  keys = {
    { "<C-f><C-f>", require("telescope.builtin").find_files },
    { "<C-l><C-g>", require("telescope.builtin").live_grep }
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

