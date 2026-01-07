return{
  {
    "folke/flash.nvim",
    opts = {},
    keys = {
      {"s", function() require("flash").jump() end, mode = {"n", "x", "o"}, desc = "Flash jump"}
    },
  },
}
