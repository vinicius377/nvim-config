return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  enable = false,
  config = function() 

    local configs = require("nvim-treesitter.configs")
    local ensure_installed = { 
      "lua",
      "vim",
      "vimdoc",
      "markdown",
      "markdown_inline",
      "typescript",
      "javascript",
      "tsx",
      "json",
      "yaml",
      "css",
      "scss",
      "html"
    }
    configs.setup({
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
        ensure_installed = ensure_installed,
    })
  end,
}
