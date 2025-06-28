return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  branch = 'master',
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
    require("nvim-treesitter.configs").setup(opts)
  end
}

