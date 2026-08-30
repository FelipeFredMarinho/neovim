return {
  'stevearc/overseer.nvim',
  ---@module 'overseer'
  ---@type overseer.SetupOpts
  -- telescope owns vim.ui.select via its ui-select extension; pull it in first so
  -- the template picker is a real float instead of an inputlist() in the cmdline.
  dependencies = { "nvim-telescope/telescope.nvim" },
  cmd = { "OverseerRun", "OverseerRunCmd", "OverseerOpen", "OverseerToggle", "OverseerQuickAction" },
  keys = {
    { "<leader>O", "<cmd>OverseerRun<CR>" },
  },
  opts = {},
}

