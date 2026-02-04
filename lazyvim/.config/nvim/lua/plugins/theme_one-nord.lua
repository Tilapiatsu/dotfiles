if true then
  return {}
end

return {
  "rmehri01/onenord.nvim",
  priority = 1000, -- Make sure to load this before all the other start plugins.
  lazy = false,
  config = function()
    local colors = require("onenord.colors").load()
    require("onenord").setup({})
  end,
}
