return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    previewers = {
      builtin = {
        extensions = {
          ["svg"]  = { "chafa", "{file}" },
          ["png"]  = { "chafa", "{file}" },
          ["jpeg"] = { "chafa", "{file}" },
          ["jpg"]  = { "chafa", "{file}" },
        }
      }
    },
    files = {
      fd_opts = [[--color=never --hidden --type f --type l --exclude .git]],
    },
    keymap = {
      fzf = {
        ["ctrl-q"] = "select-all+accept",
      },
    },
  },
  keys = {
    { 'ff', '<cmd>FzfLua files<cr>' },
    { 'fg', '<cmd>FzfLua lgrep_curbuf<cr>' },
    { 'z=', '<cmd>FzfLua spell_suggest<cr>' }
  }
}
