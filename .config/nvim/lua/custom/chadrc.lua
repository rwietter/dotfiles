---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "one_light" },
  transparency = true,
  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.ui.extended_integrations = { "trouble", "alpha", "dap" }

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

vim.g.loaded_matchparen = true
vim.g.loaded_matchbracket = true
-- vim.opt.matchparen = true

return M
