return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "bash",
      "c",
      "javascript",
      "lua",
      "python",
      "rust"
    },
    -- config = function(_, opts)
    --     require("nvim-treesitter.configs").setup(opts)
    -- end,
    highlight = { enable = true },
  },
}

