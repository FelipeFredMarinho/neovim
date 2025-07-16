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
  init = function()
    vim.defer_fn(function()
--      vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
      vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", ctermbg = "NONE" })
      vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", ctermbg = "NONE" })
    end, 0)
  end
}

