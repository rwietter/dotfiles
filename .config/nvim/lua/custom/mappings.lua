---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },


    -- zen-mode
    ["<leader>zn"] = { ":TZNarrow<CR>" },
    ["<leader>zf"] = { ":TZFocus<CR>" },
    ["<leader>zm"] = { ":TZMinimalist<CR>" },
    ["<leader>za"] = { ":TZAtaraxis<CR>" },

    -- tab switch buffer
    ["<C-t>"] = { "<cmd> tabnew <cr>", " ", opts = { nowait = true } },

  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
