return {
  'jay-babu/mason-null-ls.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'williamboman/mason.nvim',
    'nvimtools/none-ls.nvim',
  },
  config = function()
    local null_ls = require 'null-ls'
    local opts = {
      automatic_installation = true,
      automatic_setup = true,
      sources = {
        null_ls.builtins.diagnostics.hadolint,
      },
    }
    null_ls.setup(opts)
  end,
}
