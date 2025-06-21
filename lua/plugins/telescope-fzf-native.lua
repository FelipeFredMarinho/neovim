return {
  "nvim-telescope/telescope-fzf-native.nvim",
  build = "make",
  lazy = true,
  config = function(_, opts)
    require("telescope").setup(opts)
    require("telescope").load_extension("fzf")
  end,
}

