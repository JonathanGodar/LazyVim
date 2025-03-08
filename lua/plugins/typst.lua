return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tinymist = {}
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "typst"
      },
    }
  },
  {
    "chomosuke/typst-preview.nvim",
    ft = "typst",
    opts = {}

  },
}
