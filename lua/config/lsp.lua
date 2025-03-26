local lspconfig = require("lspconfig")

local servers = {
  'ts_ls',
  'pyright',
  'html',
  'cssls',
  'lua_ls',
  'cssmodules_ls',
  'astro',
  'vuels',
  'volar',
  'emmet_ls',
  'tailwindcss',
  'angularls',
  'elixirls',
  'svelte',
  'rust_analyzer',
  'biome',
  -- 'jdtls'
}

for _, server in pairs(servers) do
  local opts = {}

  local require_ok, settings = pcall(require, "config.lsp." .. server)

  if require_ok then
    -- TODO: Ver isso
    opts = vim.tbl_deep_extend("force", settings, opts)
  end

  lspconfig[server].setup {opts}
end
