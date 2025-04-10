return {
  "Exafunction/codeium.nvim",
  cond = true,
  requires = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("codeium").setup({
      virtual_text = {
        enabled = true,
      }
    })
  end
}
