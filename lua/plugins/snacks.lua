return {
  {
    "folke/snacks.nvim",
    keys = {
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
