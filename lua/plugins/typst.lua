return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tinymist = {},
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "typst",
      },
    },
  },
  {
    "chomosuke/typst-preview.nvim",
    -- ft = "typst",
    opts = {
      open_cmd = "firefox %s -P typst-preview --class typst-preview",
      debug = true,
      -- port = 56025,
      dependencies_bin = {
        ["tinymist"] = "tinymist",
        ["websocat"] = "websocat",
      },
    },
  },
}
