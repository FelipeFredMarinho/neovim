return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {
    -- flavour = "mocha",
    integrations = { telescope = true, treesitter = true },
  },
  init = function()
    vim.cmd.colorscheme("catppuccin")
  end
}

