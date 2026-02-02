-- if true then
--   return {}
-- end
--

local colors = require("plugins.theme_material")

return {
  "petertriho/nvim-scrollbar",
  lazy = false,
  config = function()
    require("scrollbar").setup({
      handle = {
        blend = 0,
        color = colors.bg_highlight,
      },
      marks = {
        Search = { color = colors.orange },
        Error = { color = colors.error },
        Warn = { color = colors.warning },
        Info = { color = colors.info },
        Hint = { color = colors.hint },
        Misc = { color = colors.purple },
      },
    })
  end,
}
