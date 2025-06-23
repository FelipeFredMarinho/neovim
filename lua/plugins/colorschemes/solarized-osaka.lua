return {
  "craftzdog/solarized-osaka.nvim",
  name = "solarized-osaka",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true
  },
  init = function()
    vim.cmd.colorscheme("solarized-osaka")
  end
}

