return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true
  },
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    dependencies = {
      'JoosepAlviste/nvim-ts-context-commentstring',
      config = true
    },
    config = function()
      local pre_hook = require("ts_context_commentstring.integrations.comment_nvim")
      local comment = require("Comment")

      comment.setup{
        pre_hook = pre_hook.create_pre_hook()
      }
    end
  }
}
