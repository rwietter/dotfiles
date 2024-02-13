---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-\\>"] = { "<cmd>execute 'normal! yy' <bar> put<CR>", "Duplicate line" },
    ["<C-y"] = { "gcc", "Comment or uncomment current line" },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    ["<S-t>"] = {
      function()
        require("trouble").toggle()
      end,
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
    ["<C-b>"] = { "y'>p", "Duplicate selection" },
  },
}

-- more keybinds!

return M
