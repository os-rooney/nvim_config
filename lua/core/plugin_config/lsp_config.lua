require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'jdtls' }
})
local DEFAULT_SETTINGS = {
  ui = {
    check_outdated_packages_on_open = true,

    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    },

    keymaps = {
      -- Keymap to update all insatlled packages
      update_all_packages = "U",
    },
  }
}

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require('lspconfig').lua_ls.setup {
  DEFAULT_SETTIGNS = DEFAULT_SETTINGS,
  on_attach = on_attach
}
require('lspconfig').jdtls.setup {}
