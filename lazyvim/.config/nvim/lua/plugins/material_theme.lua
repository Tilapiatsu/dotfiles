-- if true then
--   return {}
-- end

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
        -- Dark
        -- colors.editor.bg = "#13161e"
        -- colors.editor.selection = "#122231"

        -- Brighter
        colors.editor.bg = "#252830"
        colors.editor.bg_alt = "#2a2d36"
        colors.editor.cursor = "#255869"
        colors.editor.selection = "#2b3743"
        colors.editor.active = "#1e222a"
        colors.syntax.comments = "#4f5568"
        colors.editor.contrast = "#1a1e25"
        colors.backgrounds.sidebars = colors.editor.bg
        colors.backgrounds.floating_windows = "#1d1f26"
        colors.backgrounds.non_current_windows = colors.editor.bg
        colors.backgrounds.bg_blend = colors.editor.bg
        colors.backgrounds.cursor_line = colors.editor.active
        --colors.editor.contrast = "#1b1e25"
        --colors.lsp.error = "#273746"
      end,
    })
    vim.cmd.colorscheme("material-deep-ocean")
  end,
}
