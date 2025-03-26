return {
  "coffebar/neovim-project",
  opts = {
    projects = { -- define project roots
      "~/Desktop/code/automações/*",
      "~/Desktop/code/estudos/*",
      "~/Desktop/code/projetos/*",
      "~/Desktop/code/repositorios/*",
      "~/.config/nvim"
    },
    picker = {
      type = "fzf-lua", -- or "fzf-lua"
      preview = true, -- show directory structure preview in Telescope
    }
  },
  init = function()
    vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    -- optional picker
    { "ibhagwan/fzf-lua" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
}
