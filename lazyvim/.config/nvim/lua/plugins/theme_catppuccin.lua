if true then
  return {}
end

return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
    },
    config = function()
      vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
}
