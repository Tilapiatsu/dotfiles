-- if true then
--   return {}
-- end
--
return {
  "marko-cerovac/material.nvim",
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require("material").setup({
      styles = {
        comments = {
          italic = true,
        }, -- Disable italics in comments
      },

      custom_colors = function(colors)
        --colors.editor.bg = "#191a1e"
        colors.editor.bg = "#13161e"
        colors.editor.cursor = "#255869"
        --colors.lsp.error = '#852029'
        colors.editor.selection = "#232934"
      end,
    })
    vim.cmd.colorscheme("material-deep-ocean")
  end,
}
