local map = vim.keymap.set

map("n", "<leader>tn", ":tabn<CR>", { desc = "Next Tab", noremap = true })
map("n", "<leader>tp", ":tabp<CR>", { desc = "Previous Tab", noremap = true })
map("n", "<leader>ta", ":$tabnew<CR>", { desc = "New Tab" } )
map("n", "<leader>tc", ":$tabclose<CR>", { desc = "Tab Close" } )

-- splits navigator remaps
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Change between buffers
map('n', '<leader>n', '<cmd>:bnext<cr>', { desc = "Next Buffer" })
map('n', '<leader>p', '<cmd>:bprevious<cr>', { desc = "Previous Buffer" })

-- Delete buffer
map('n', '<leader>d', '<cmd>:bdelete<cr>', { desc = "Delete Buffer" })

-- Delete no copy text
map('n', 'x', '"_x')
map('v', 'x', '"_x')
map('n', 'd', '"_d')
map('v', 'd', '"_d')
