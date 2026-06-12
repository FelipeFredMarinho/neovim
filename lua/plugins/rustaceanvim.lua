return {
  "mrcjkb/rustaceanvim",
  tag = "v8.0.5", -- Last version for neovim 0.11
  config = function()
    local mason_reg = require("mason-registry")
    local codelldb = mason_reg.get_package("codelldb")
    local extension_path = codelldb:get_install_path() .. "/extension/"
    local codelldb_path = extension_path .. "adapter/codelldb"
    local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
    local cfg = require("rustaceanvim.config")

    vim.g.rustaceanvim = {
      dap = {
        adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
      },
    }
  end,
}

