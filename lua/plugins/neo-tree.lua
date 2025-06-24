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
      position = "float",
      mappings = {
        ["l"] = "open",
        ["h"] = "close_node"
      }
    },
    tabs_layout = "active"
  },
  keys = {
    --{ "<leader>n", ":Neotree left<CR>" },
    { "<leader>nf", ":Neotree reveal float<CR>" },
    { "<leader>nb", ":Neotree buffers float<CR>" },
  },
  init = function()
--    vim.cmd([[
--  hi NeoTreeNormal guibg=NONE ctermbg=NONE
--  hi NeoTreeNormalNC guibg=NONE ctermbg=NONE
--  hi NeoTreeWinSeparator guibg=NONE ctermbg=NONE
--  hi NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE
--    ]])
    vim.defer_fn(function()
      vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", ctermbg = "NONE" })
      vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", ctermbg = "NONE" })
      vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { bg = "NONE", ctermbg = "NONE" })
      vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "NONE", ctermbg = "NONE" })
    end, 1)
  end
}

