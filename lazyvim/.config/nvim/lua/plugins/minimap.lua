-- if true then
--   return {}
-- end

return {
  "wfxr/minimap.vim",
  build = "cargo install --locked code-minimap",
  dependencies = {
    "folke/snacks.nvim", -- for the toggling
  },
  init = function()
    vim.cmd("let g:minimap_width = 10")
    -- vim.cmd("let g:minimap_auto_start = 1")
    vim.cmd("let g:minimap_auto_start_win_enter = 1")
    vim.cmd("let g:minimap_git_colors = 1")
    vim.cmd("let g:minimap_highlight_search = 1")
  end,
  config = function()
    vim.api.nvim_create_autocmd("BufEnter", {
      callback = function()
        if vim.g.minimap_enabled == nil then
          vim.g.minimap_enabled = 0
        end
      end,
    })
    local minimap_toggle = Snacks.toggle.new({
      name = "Minimap",
      which_key = true,
      get = function()
        return vim.g.minimap_enabled == 1
      end,
      notify = false,
      set = function(state)
        if state then
          vim.g.minimap_enabled = 1
          vim.cmd("Minimap")
        else
          vim.g.minimap_enabled = 0
          vim.cmd("MinimapClose")
        end
      end,
    })
    -- Snacks.toggle.map(minimap_toggle, "<leader>um", { desc = "Toggle Minimap" })
    vim.keymap.set("n", "<leader>mt", function()
      minimap_toggle:toggle()
    end, { desc = "Toggle Minimap" })
  end,
}
