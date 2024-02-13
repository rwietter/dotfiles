local options = {
  sync_install = false,
  rainbow = { enable = true, extended_mode = true, max_file_lines = nil },
  context_commentstring = { enable = true, enable_autocmd = false },
  autopairs = { enable = true },
  auto_install = true,
  ensure_installed = {
    "lua",
    "vim",
    "go",
    "toml",
    "css",
    "tsx",
    "html",
    "lua",
    "c",
    "c_sharp",
    "graphql",
    "json",
    "jsx",
    "javascript",
    "lua",
    "markdown",
    "python",
    "rust",
    "typescript",
    "yaml",
    "bash",
    "comment",
    "java"
  },
  highlight = {
    enable = true,
    use_languagetree = true
  },
  autotag = {
    enable = true,
    filetypes = {
      "html",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "svelte",
      "vue",
      "tsx",
      "jsx",
      "rescript",
      "css",
      "lua",
      "xml",
      "php",
      "markdown"
    }
  },
  indent = { enable = true }
}

return options
