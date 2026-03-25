-- if true then
--   return {}
-- end

return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    routes = {
      {
        view = "notify",
        filter = { event = "msg_showmode" },
      },
    },
    views = {
      hover = {
        border = {
          style = "rounded",
        },
      },
    },
  },
}
