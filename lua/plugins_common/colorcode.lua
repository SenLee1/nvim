return{
  "shellRaining/hlchunk.nvim",
  event = { "UIEnter" },
  dependencies = {"nvim-tree/nvim-web-devicons"},
  config = function()
    require("hlchunk").setup({})
  end,
}
 
