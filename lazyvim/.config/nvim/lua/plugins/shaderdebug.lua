if true then
  return {}
end

return {
  "NickTsaizer/shaderdebug.nvim",
  ft = { "slang" },
  dependencies = { "3rd/image.nvim" },
  lazy = false,
  config = function()
    require("shaderdebug").setup({
      api = "vulkan", -- "vulkan", "opengl", or "auto"
      preview = {
        backend = "image.nvim", -- "native", "auto", or "image.nvim"
      },
    })
  end,
}
