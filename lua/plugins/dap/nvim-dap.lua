return {
  "mfussenegger/nvim-dap",
  dependencies = {
    --{
    --  "igorlfs/nvim-dap-view",
    --    ---@module 'dap-view'
    --    ---@type dapview.Config
    --    opts = {},
    --},
    {
      "rcarriga/nvim-dap-ui",
      keys = {
        { "<leader>du", function() require("dapui").toggle() end, desc = "Dap UI" },
        { "<leader>de", function() require("dapui").eval() end, desc = "Eval", mode = { "n", "v" } },
        {
          "<leader>dwa",
          function()
            require("dapui").elements.watches.add(vim.fn.input("Parameter: "))
          end,
          desc = "Add watch expr",
          mode = { "n", "v" }
        },
        {
          "<leader>dwe",
          function()
            require("dapui").elements.watches.add(vim.fn.input("Parameter: "))
          end,
          desc = "Add watch expr",
          mode = { "n", "v" }
        },
      }
    },
--    {
--      "jay-babu/mason-nvim-dap.nvim",
--      cmd = { "DapInstall", "DapUninstall" },
--      opts = { automatic_installation = true },
--    },
    { "nvim-neotest/nvim-nio" },
    { "leoluz/nvim-dap-go" },
    { "theHamsta/nvim-dap-virtual-text" },
  },
  keys = {
    { "<leader>b", ":DapToggleBreakpoint<CR>" },--require("dap").toggle_breakpoint, },
    {
      "<leader>B",
      function() require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: ")) end,
      desc = "Breakpoint Condition",
      --require("dap").toggle_breakpoint,
    },
    { "<F6>", ":DapContinue<CR>" },--require("dap").continue, },
    { "<leader>dC", ":DapContinue<CR>" },--require("dap").continue, },
    { "<leader>dT", ":DapTerminate<CR>" },
    { "<leader>di", ":DapStepInto<CR>" },--require("dap").step_into, },
    { "<leader>do", ":DapStepOver<CR>" },--require("dap").step_over, },
    { "<leader>dO", ":DapStepOut<CR>" },--require("dap").step_out, },
    { "<F7>", ":DapStepOut<CR>" },--require("dap").step_out, },
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup({
      layouts = {
        {
          elements = { "breakpoints", "scopes", "watches", "stacks" },
          size = 35,
          position = "left"
        },
        {
          elements = { "repl", "console" },
          size = 10,
          position = "bottom"
        },
      },
    })

    require("dap-go").setup {
      dap_configurations = {
      },
      delve = {
        port = "4747"
      }
    }

    -- dap C/C++
    dap.adapters.codelldb = {
      type = "executable",
      command = "/home/felipe_marinho/.local/share/nvim/mason/bin/codelldb",
      name = "codelldb",
    }
    dap.configurations.cpp = {
      {
        name = "launch",
        type = "codelldb",
        request = "launch",
        program = function()
          return vim.fn.input("path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = vim.fn.getcwd(),
        stoponentry = false,
        args = {},
      }
    }
    dap.configurations.c = dap.configurations.cpp
    -- dap C/C++
    -- dap python
    dap.adapters.python = {
      type = "executable",
      command = "python",
      args = { "-m", "debugpy.adapter" },
    }
    dap.configurations.python = {
      {
        type = "python",
        request = "launch",
        name = "Launch file",
        program = "${file}", -- roda o arquivo atual
        pythonPath = function()
          return "python"
        end,
      },
    }
    --dap python

    require("nvim-dap-virtual-text").setup()

    --    vim.keymap.set("n", "<F9>", dap.toggle_breakpoint)
    --    vim.keymap.set("n", "<F5>", dap.continue)
    --    vim.keymap.set("n", "<C-F5>", ":DapTerminate<CR>")
    --    vim.keymap.set("n", "<F10>", dap.step_over)
    --    vim.keymap.set("n", "<F11>", dap.step_into)
    --    vim.keymap.set("n", "<C-F11>", dap.step_out)

    vim.fn.sign_define('DapBreakpoint', { text = '●', texthl = 'DiagnosticError', linehl = '', numhl = '' })
    vim.fn.sign_define('DapBreakpointCondition', { text = '◆', texthl = 'DiagnosticWarn', linehl = '', numhl = '' })


    vim.keymap.set("n", "<F8>", dapui.toggle)
    dap.listeners.before.attach.dapui_config = dapui.open
    dap.listeners.before.launch.dapui_config = dapui.open
    --dap.listeners.before.event_terminated.dapui_config = dapui.close
    dap.listeners.before.event_exited.dapui_config = dapui.close
  end,
}

