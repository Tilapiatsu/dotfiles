return {
  "rcarriga/nvim-dap-ui",
  dependencies = { "nvim-neotest/nvim-nio" },
  keys = {
    {
      "<leader>du",
      function()
        require("dapui").toggle({})
      end,
      desc = "Dap UI",
    },
    {
      "<leader>de",
      function()
        require("dapui").eval()
      end,
      desc = "Eval",
      mode = { "n", "v" },
    },
    {
      "<C-A-S-b>",
      function()
        require("dap").toggle_breakpoint()
      end,
      desc = "Toggle Breakpoint",
    },
    {
      "<C-A-S-CR>",
      function()
        require("dap").continue()
      end,
      desc = "Run/Continue",
    },
    {
      "<C-A-S-Down>",
      function()
        require("dap").step_into()
      end,
      desc = "Step Into",
    },
    {
      "<C-A-S-Up>",
      function()
        require("dap").step_out()
      end,
      desc = "Step Out",
    },
    {
      "<C-A-S-Right>",
      function()
        require("dap").step_over()
      end,
      desc = "Step Over",
    },
  },
  opts = {},
  config = function(_, opts)
    local dap = require("dap")
    local dapui = require("dapui")
    dapui.setup(opts)
    dap.listeners.after.event_initialized["dapui_config"] = function()
      vim.cmd(":w")
      dapui.open({})
    end
    -- disable closing dap when finished
    -- dap.listeners.before.event_terminated["dapui_config"] = function()
    -- dapui.close {}
    -- end
    -- dap.listeners.before.event_exited["dapui_config"] = function()
    -- dapui.close {}
    -- end
  end,
}
