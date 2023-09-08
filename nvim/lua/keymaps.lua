vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--this allows the clipboard to interact with things outside of nvim
vim.opt.clipboard = 'unnamedplus'

vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.laststatus = 2
vim.opt.backspace = '2'
vim.opt.showcmd = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true

--if has('gui_running')
--  set guifont=JetBrainsMono
--endif

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

