local utils = require("utils")
local M = {}

M.colorscheme_conf = {
  onedark = function()
    -- Lua
    require("onedark").setup {
      style = "darker",
    }
    require("onedark").load()
  end,
  edge = function()
    vim.g.edge_style = "default"
    vim.g.edge_enable_italic = 1
    vim.g.edge_better_performance = 1

    vim.cmd([[colorscheme edge]])
  end,
  sonokai = function()
    vim.g.sonokai_enable_italic = 1
    vim.g.sonokai_better_performance = 1

    vim.cmd([[colorscheme sonokai]])
  end,
  gruvbox_material = function()
    -- foreground option can be material, mix, or original
    vim.g.gruvbox_material_foreground = "original"
    --background option can be hard, medium, soft
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_enable_italic = 1
    vim.g.gruvbox_material_better_performance = 1

    vim.cmd([[colorscheme gruvbox-material]])
  end,
  everforest = function()
    vim.g.everforest_background = "hard"
    vim.g.everforest_enable_italic = 1
    vim.g.everforest_better_performance = 1

    vim.cmd([[colorscheme everforest]])
  end,
  nightfox = function()
    vim.cmd([[colorscheme nordfox]])
  end,
  catppuccin = function()
    -- available option: latte, frappe, macchiato, mocha
    vim.g.catppuccin_flavour = "frappe"
    require("catppuccin").setup()

    vim.cmd([[colorscheme catppuccin]])
  end,
  onedarkpro = function()
    -- set colorscheme after options
    -- onedark_vivid does not enough contrast
    vim.cmd("colorscheme onedark_dark")
  end,
  material = function()
    vim.g.material_style = "darker"
    vim.cmd("colorscheme material")
  end,
  arctic = function()
    vim.cmd("colorscheme arctic")
  end,
  kanagawa = function()
    vim.cmd("colorscheme kanagawa-wave")
  end,
}

M.rand_colorschema = function()
  local colorschema_conf_keys = vim.tbl_keys(M.colorscheme_conf)
  local colorschema = utils.random_el(colorschema_conf_keys)

  if not vim.tbl_contains(colorschema_conf_keys, colorschema) then 
    local msg = "Invalid colorscheme: " .. colorscheme
    vim.notify(msg, vim.log.levels.ERROR, { title = "nvim-config" })

    return
  end

  M.colorscheme_conf[colorschema]()

end

M.rand_colorschema()
