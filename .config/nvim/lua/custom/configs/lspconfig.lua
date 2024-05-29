--[[
   Servers: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
]]

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  "html",
  "cssls",
  "tsserver",
  "clangd",
  "rust_analyzer",
  "pyright",
  "marksman",
  "ltex",
  "awk_ls",
  "vuels",
  "jsonls",
  "tailwindcss",
  -- "efm",
  -- "eslint",
}

-- trigger upon LSP attachment
vim.api.nvim_create_autocmd("User", {
  pattern = "LspAttached",
  once = true,
  callback = vim.lsp.codelens.refresh,
})

-- ... servers and enhanced_opts ...
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = function(_, bufnr)
      -- refresh codelens on TextChanged and InsertLeave as well
      vim.api.nvim_create_autocmd({ "TextChanged", "InsertLeave", "BufWritePre" }, {
        buffer = bufnr,
        callback = vim.lsp.codelens.refresh,
        command = "EslintFixAll",
      })

      -- trigger codelens refresh
      vim.api.nvim_exec_autocmds("User", { pattern = "LspAttached" })
    end,
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

-- ... Configure LSP Diagnostics ...
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

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  enabled = true,
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.hover, {
  enabled = true,
})

-- ...................... --
-- ... Set up LSP servers ...
-- ...................... --

-- ... efm ...
lspconfig.efm.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = { documentFormatting = true },
  filetypes = { "lua", "python", "javascript", "typescript", "typescriptreact", "sh", "awk" },
}

lspconfig.eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "vscode-eslint-language-server", "--stdio" },
}

-- ... Configure ts server ...
lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "typescript", "typescriptreact" },
  root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
}

-- ... Configure pyright ...
lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true,
      },
    },
  },
}

-- ... Configure rust_analyzer ...
lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        loadOutDirsFromCheck = true,
      },
      procMacro = {
        enable = true,
      },
    },
  },
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  diagnostics = {
    signs = true,
    underline = true,
    update_in_insert = true,
    virtual_text = {
      spacing = 4,
      prefix = "",
    },
  },
}

lspconfig.awk_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "awk-language-server" },
  filetypes = { "awk" },
  root_dir = lspconfig.util.root_pattern ".git",
}

lspconfig.vuels.setup {}
lspconfig.jsonls.setup {}

lspconfig.tailwindcss.setup {}

-- vim.lsp.codelens.refresh { bufnr = 0 }
