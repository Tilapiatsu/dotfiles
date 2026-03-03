if true then
  return {}
end

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
  keys = {
    -- enable finding hidden/dot files
    {
      "<leader><leader>",
      Util.telescope("files", { hidden = true, no_ignore = false }),
      desc = "Find files (root dir)",
    },
    {
      "<leader>ff",
      Util.telescope("files", { hidden = true, no_ignore = false }),
      desc = "Find files (root dir)",
    },
    {
      "<leader>fF",
      Util.telescope("files", { cwd = false, hidden = true, no_ignore = false }),
      desc = "Find files (cwd)",
    },
  },
}
