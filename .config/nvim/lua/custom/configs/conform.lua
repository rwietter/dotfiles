--type conform.options
-- Please see formatters and linters for more information <https://github.com/stevearc/conform.nvim?tab=readme-ov-file#formatters>
local options = {
  lsp_fallback = true,

  formatters_by_ft = {
    lua = { "stylua" },

    javascript = { "biome" },
    javascriptreact = { "biome" },
    typescript = { "eslint" },
    typescriptreact = { "biome" },
    css = { "prettier" },
    html = { "prettier" },
    markdown = { "prettier" },
    awk = { "awk" },
    json = { "prettier" },
    vue = { "prettier" },

    sh = { "shfmt" },
  },

  -- adding same formatter for multiple filetypes can look too much work for some
  -- instead of the above code you could just use a loop! the config is just a table after all!

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
