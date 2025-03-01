return {
  {
    "christoomey/vim-tmux-navigator",
    keys = {
      { "<C-h>", "<cmd>TmuxNavigateLeft",  desc = "Navigate left" },
      { "<C-j>", "<cmd>TmuxNavigateDown",  desc = "Navigate down" },
      { "<C-k>", "<cmd>TmuxNavigateUp",    desc = "Navigate up" },
      { "<C-l>", "<cmd>TmuxNavigateRight", desc = "Navigate right" },
    },
    config = function()
      -- I dont think i managed to disable the keymaps, oh well
      vim.g.tmux_navigator_no_mappings = 1;
    end
  }
}
