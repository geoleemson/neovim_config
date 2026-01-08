return{
  {
    "folke/flash.nvim",
    opts = {},
    keys = {
      {"fl", function() require("flash").jump() end, mode = {"n", "x", "o"}, desc = "Flash jump"}
    },
  },
}
