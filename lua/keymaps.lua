local map = vim.keymap.set
local mapn = function(lhs, rhs, opts)
  map('n', lhs, rhs, opts)
end

-- Tabs
mapn('<leader><tab>l', '<cmd>tablast<cr>', { desc = 'Last tab' })
mapn('<leader><tab>f', '<cmd>tabfirst<cr>', { desc = 'First tab' })
mapn('<leader><tab>d', '<cmd>tabclose<cr>', { desc = 'Close tab' })
mapn('<leader><tab>[', '<cmd>tabprevious<cr>', { desc = 'Previous tab' })
mapn('<leader><tab>]', '<cmd>tabnext<cr>', { desc = 'Next tab' })
mapn('<leader><tab><tab>', '<cmd>tabnew<cr>', { desc = 'Create new tab' })

-- Text editing
mapn('<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move line up' })
mapn('<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move line down' })
vim.keymap.set('i', '<A-j>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move line down' })
vim.keymap.set('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move line down' })

-- General
mapn('<leader>fn', '<cmd>enew<cr>')
mapn('<C-d>', '<C-d>zz')
mapn('<C-u>', '<C-u>zz')
mapn('<leader>w', '<cmd>w<cr>', { desc = 'Save file' })
mapn('<leader>o', ':update<CR> :source<CR>', { desc = 'Reload config' })
mapn('<leader>e', ':Oil<CR>', { desc = 'Open file explorer' })

-- Windows
mapn('<leader>-', '<C-W>s', { desc = 'Split horizontally' })
mapn('<leader>|', '<C-W>v', { desc = 'Split vertically' })
mapn('<leader>wd', '<C-W>c', { desc = 'Delete window' })
mapn('<C-Up>', '<cmd>resize +2<cr>', { desc = 'Increase Window Height' })
mapn('<C-Down>', '<cmd>resize -2<cr>', { desc = 'Decrease Window Height' })
mapn('<C-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease Window Width' })
mapn('<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase Window Width' })
mapn('<leader>wl', '<cmd>wincmd l<cr>', { desc = 'Got to right window', remap = true })
mapn('<leader>wh', '<cmd>wincmd h<cr>', { desc = 'Got to left window' })
mapn('<leader>wk', '<cmd>wincmd k<cr>', { desc = 'Got to upper window' })
mapn('<leader>wj', '<cmd>wincmd j<cr>', { desc = 'Got to lower window' })
mapn('<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
mapn('<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
mapn('<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
mapn('<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- telescope
local builtin = require 'telescope.builtin'
mapn('<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
mapn('<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
mapn('<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
mapn('<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
mapn('<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
mapn('<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
mapn('<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
mapn('<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
mapn('<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
mapn('<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })
mapn('<leader>sy', builtin.lsp_document_symbols, { desc = '[S]earch document S[y]mbols' })
mapn('<leader>sY', builtin.lsp_workspace_symbols, { desc = '[S]earch workspace S[Y]mbols' })
mapn('<leader>sm', builtin.marks, { desc = '[S]earch [M]arks' })
mapn('<leader>lf', vim.lsp.buf.format, { desc = '[L]SP Format' })

mapn('<leader>/', function()
  -- You can pass additional configuration to Telescope to change the theme, layout, etc.
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

-- It's also possible to pass additional configuration options.
--  See `:help telescope.builtin.live_grep()` for information about particular keys
mapn('<leader>s/', function()
  builtin.live_grep {
    grep_open_files = true,
    prompt_title = 'Live Grep in Open Files',
  }
end, { desc = '[S]earch [/] in Open Files' })

-- Shortcut for searching your Neovim configuration files
mapn('<leader>sn', function()
  builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim files' })

vim.diagnostic.config {
  virtual_text = true,
}
mapn('<leader>lq', ':lua vim.diagnostic.open_float()<cr>', { desc = '[L]sp [Q]uickfix' })
