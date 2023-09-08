require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { 'c', 'lua', 'vim', 'git_config', 'gitcommit', 'gitignore', 'git_rebase', 'gdscript', 'java', 'css', 'html', 'dart', 'cmake', 'cpp', 'javascript', 'json', 'markdown_inline', 'markdown', 'python', 'regex', 'sql', 'xml', 'yaml' },

  -- Install parsers synchronously (only applied to 'ensure_installed')
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
