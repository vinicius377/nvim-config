local function on_attach(bufnr) local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)


  -- custom mappings
  vim.keymap.set('n', 'f', '<cmd>:FzfLua files<cr>', opts('Find files'))
  vim.keymap.set('n', 'g', '<cmd>:FzfLua live_grep<cr>', opts('Find grep'))
end

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "ibhagwan/fzf-lua"
  },
  opts = {
    view = {
      width = 23
    },
    on_attach = on_attach,
  },
 priority = 1000,
  keys = {
    { '<C-a>', '<cmd>NvimTreeToggle<cr>' }
  }
}
