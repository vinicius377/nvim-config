return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require('which-key')

    wk.add({
      { "<space>t",  group = "Tabs" },
      { "<space>tn", ":$tabnew<CR>",               desc = "New Tab" },
      { "<space>tc", ":$tabclose<CR>",             desc = "Tab Close" },
      { "<space>p",  ":NeovimProjectDiscover<CR>", desc = "Project Discover" }
    })
  end,
}
