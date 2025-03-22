return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>gd",
        false,
      },
      {
        "<leader>R",
        function()
          Snacks.picker.resume()
        end,
        desc = "Resume snacks picker",
      },
    },
  },
}
