-- if true then
--   return {}
-- end

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "hlsl", "glsl" },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
  vim.filetype.add({
    extension = {
      vert = "glsl",
      frag = "glsl",
      fragment = "hlsl",
      hlsl = "hlsl",
      usf = "hlsl", -- Unreal Shader Format
    },
  }),
}
