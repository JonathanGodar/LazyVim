return {
  {
    "sindrets/diffview.nvim",
    cmd = {
      "DiffviewClose",
      "DiffviewOpen",
      "DiffviewFileHistory",
      "DiffviewLog",
      "DiffviewRefresh",
      "DiffviewFocusFiles",
      "DiffviewToggleFiles",
    },
    keys = {
      "<leader>gd",
      "DiffviewOpen",
      -- function()
      --   require("").open({ "diff" })
      -- end,
      "i",
      desc = "Git diff",
    },

    -- keys = {
    --   ''
    -- },
  },
}
