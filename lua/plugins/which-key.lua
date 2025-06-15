return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require('which-key')

    wk.add({
      { "<space>t",  group = "Tabs" },
      { "<space>tn", ":$tabnew<CR>",               desc = "New Tab" },
      { "<space>tc", ":$tabclose<CR>",             desc = "Tab Close" },
      { "<space>p",  ":NeovimProjectDiscover<CR>", desc = "Project Discover" },
      { "<space>b",  group = "Buffers" },
      { "<space>bd", ":NvimTreeFindFile<CR>",      desc = "Find buffer directory" },
      { "<space>bc", ":bufdo bdelete<CR>",         desc = "Close buffers" },
      { "<space>bl", ":FzfLua buffers<CR>",        desc = "Show buffers" },
      { "<space>s",  group = "Split" },
      { "<space>sv", ":vsplit<CR>",                desc = "Split vertical" },
      { "<space>sh", ":split<CR>",                 desc = "Split horizontal" },
      { "<space>g",  group = "Git" },
    })
  end,
}
