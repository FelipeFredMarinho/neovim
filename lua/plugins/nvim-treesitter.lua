return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  opts = {
    ensure_installed = {
      "bash",
      "c",
      "go",
      "javascript",
      "typescript",
      "lua",
      "python",
      "rust"
    },
    highlight = { enable = true },
  },
  config = function(_, opts)
    require("nvim-treesitter").setup(opts)
  end
}

