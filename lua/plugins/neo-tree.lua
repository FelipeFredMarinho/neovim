return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  priority = 980,
  opts = {
    transparent = true,
    --defaults = { file_ignore_patterns = { "node_modules" } },
    filesystem = {
      filtered_items = {
        hide_dotfiles = false
      }
    },
    window = {
      mappings = {
        ["l"] = "open",
        ["h"] = "close_node"
      }
    },
    tabs_layout = "active"
  },
}

