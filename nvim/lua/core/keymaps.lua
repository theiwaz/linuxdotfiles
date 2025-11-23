-- Set Leader key
vim.g.mapleader = ' ' 
vim.g.maplocalleader = ' '

-- Disable spacebar default in Normal and Visual modes
vim.keymap.set({ 'n','v' }, '<Space>', '<Nop>', { silent = true })

-- Define var to use to hide visualisation of commands
local opts = { noremap = true, silent = true }

-- Save witn ctrl+s
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

vim.keymap.set('n', '<Leader>sn', '<cmd>noautocommand w <CR>', opts) -- Save file without formattig
vim.keymap.set('n', 'x', '"_x', opts)                                -- delete without clipboard

-- Keep the view centered when searching or jumping
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Resize vim splits with arrow keys
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- Tabs (not vim buffers)
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts) -- new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) -- close tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts) -- next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) -- previous tab

vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- Stay in indent mode 
vim.keymap.set('v', '>', '>gv', opts)
vim.keymap.set('v', '<', '<gv', opts)

-- Diagnostic keymaps
vim.keymap.set('n', '[d', function()
  vim.diagnostic.jump { count = -1, float = true }
end, { desc = 'Go to previous diagnostic message' })

vim.keymap.set('n', ']d', function()
  vim.diagnostic.jump { count = 1, float = true }
end, { desc = 'Go to next diagnostic message' })

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })



