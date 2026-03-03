return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash",
        --"html",
        --"javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        --"query",
        "regex",
        --"tsx",
        --"typescript",
        "vim",
        "yaml",
      })
    end,
  },
}
