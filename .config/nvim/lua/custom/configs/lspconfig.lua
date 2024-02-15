local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "rust_analyzer", "pyright" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    diagnostics = {
      signs = true,
      underline = true,
      update_in_insert = true,
      virtual_text = {
        spacing = 4,
        prefix = "",
      },
    },
    severity_sort = true,
    inlay_hints = {
      enabled = true,
    },
  }
end

lspconfig.tsserver.setup {}
lspconfig.pyright.setup {}
lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ["rust-analyzer"] = {},
  },
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  virtual_text = {
    spacing = 4,
  },
  signs = function(namespace, bufnr)
    return vim.b[bufnr].show_signs == true
  end,
  update_in_insert = true,
})

vim.lsp.codelens.refresh { bufnr = 0 }
