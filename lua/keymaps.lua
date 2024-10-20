-- Tabs
vim.keymap.set('n', '<leader><tab>l', '<cmd>tablast<cr>', { desc = 'Last tab' })
vim.keymap.set('n', '<leader><tab>f', '<cmd>tabfirst<cr>', { desc = 'First tab' })
vim.keymap.set('n', '<leader><tab>d', '<cmd>tabclose<cr>', { desc = 'Close tab' })
vim.keymap.set('n', '<leader><tab>[', '<cmd>tabprevious<cr>', { desc = 'Previous tab' })
vim.keymap.set('n', '<leader><tab>]', '<cmd>tabnext<cr>', { desc = 'Next tab' })
vim.keymap.set('n', '<leader><tab><tab>', '<cmd>tabnew<cr>', { desc = 'Create new tab' })

-- Text editing
vim.keymap.set('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move line up' })
vim.keymap.set('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move line down' })
vim.keymap.set('i', '<A-j>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move line down' })
vim.keymap.set('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move line down' })

-- General
vim.keymap.set('n', '<leader>fn', '<cmd>enew<cr>')

-- Windows
vim.keymap.set('n', '<leader>-', '<C-W>s', { desc = 'Split horizontally' })
vim.keymap.set('n', '<leader>|', '<C-W>v', { desc = 'Split vertically' })
vim.keymap.set('n', '<leader>wd', '<C-W>c', { desc = 'Delete window' })
vim.keymap.set('n', '<C-Up>', '<cmd>resize +2<cr>', { desc = 'Increase Window Height' })
vim.keymap.set('n', '<C-Down>', '<cmd>resize -2<cr>', { desc = 'Decrease Window Height' })
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease Window Width' })
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase Window Width' })
vim.keymap.set('n', '<leader>wl', '<cmd>wincmd l<cr>', { desc = 'Got to right window', remap = true })
vim.keymap.set('n', '<leader>wh', '<cmd>wincmd h<cr>', { desc = 'Got to left window' })
vim.keymap.set('n', '<leader>wk', '<cmd>wincmd k<cr>', { desc = 'Got to upper window' })
vim.keymap.set('n', '<leader>wj', '<cmd>wincmd j<cr>', { desc = 'Got to lower window' })
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
