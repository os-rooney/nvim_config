require 'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "lua", "vim", "vimdoc", "javascript", "java", "json", "kotlin", "python", "sql", "scss", "regex", "markdown", "markdown_inline", "http", "html", "css", "bash", "go", "gitignore", "gitcommit", "rust", "typescript"},

  -- Install parsers synchronously (only applied to 'ensure_installed')
  sync_install = false,
  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have 'tree-sitter' CLI installed locally
  auto_install = true,
  highlight = {
    enable = true,
  },

}
