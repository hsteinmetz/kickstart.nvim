--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
require 'settings'
require 'plugins'
require 'keymaps'

vim.api.nvim_create_augroup('MarkdownBullets', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
  group = 'MarkdownBullets',
  pattern = 'markdown',
  callback = function()
    vim.opt_local.formatoptions:append 'ro'
    vim.opt_local.comments = 'b:*,b:-,b:+,b:1.,n:>,b:- [ ],b:- [x]'
    vim.opt_local.formatlistpat = [[^\s*\d\+[\]:.)}\t ]\|^\s*[-*+]\s\+]]
  end,
})

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
