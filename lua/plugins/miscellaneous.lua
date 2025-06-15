return {
  {
    "kylechui/nvim-surround",
    config = true,
    event = "VeryLazy"
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    event = "VeryLazy",
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    opts = {},
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  --{
  --  "3rd/image.nvim",
  --  config = true
  --},
  {
    "lukas-reineke/indent-blankline.nvim",
    config = true,
    main = "ibl"
  },
  {
    "norcalli/nvim-colorizer.lua"
  },
  {
    "windwp/nvim-ts-autotag"
  },
  {
    "ramilito/winbar.nvim",
    event = "VimEnter", -- Alternatively, BufReadPre if we don't care about the empty file when starting with 'nvim'
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = true
  }
}
