local M =  {
  "neovim/nvim-lspconfig",
  event = { "BufRead", "BufNewFile" },
  dependencies = { "williamboman/mason-lspconfig.nvim" }
}

M.config = function()
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

    -- Use LspAttach autocommand to only map the following keys
    -- after the language server attaches to the current buffer
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('UserLspConfig', {}),
      callback = function(ev)
        -- Enable completion triggered by <c-x><c-o>
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = function(desc)
        return { buffer = ev.buf, desc = desc }
      end
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts("Go to declaration"))
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts("Go to definition"))
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, opts("Hover"))
        vim.keymap.set('n', '<space>wl', function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts("List workspace folders"))
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts("Type definition"))
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts("Rename"))
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts("Go to references"))
        vim.keymap.set('n', '<space>f', function()
          vim.lsp.buf.format { async = true }
        end, opts("Format"))
      end,
    })

    require("config.lsp")
  end

return M
