local function on_attach()
  local gitsigns = require 'gitsigns'
  vim.keymap.set('v', '<space>gh', function()
    gitsigns.preview_hunk({ vim.fn.line('.'), vim.fn.line('v') })
  end)
end

return {
  {
    "akinsho/git-conflict.nvim",
    config = true
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      on_attach = on_attach
    },
    lazy = false,

  }
}
