return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { 'ff', '<cmd>FzfLua files<cr>' },
    { 'fg', '<cmd>FzfLua lgrep_curbuf<cr>' },
    { 'z=', '<cmd>FzfLua spell_suggest<cr>'}
  }
}
