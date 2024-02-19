---@type MappingsTable
local M = {}

M.general = {
  i = {
    ["<C-s>"] = { "<ESC>:update<CR>gi", "Save file" },
  },

  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-\\>"] = { "<cmd>execute 'normal! yy' <bar> put<CR>", "Duplicate line" },
    ["<C-y>"] = { "gcc", "Comment or uncomment current line" },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    -- Notificatios
    ["<leader>sd"] = {
      function()
        require("notify").dismiss { silent = true, pending = true }
      end,
      "Dimmiss notification",
    },

    -- Boole
    ["<C-a"] = { ":Boole increment<CR>", "Increment number under cursor" },
    ["<C-x"] = { ":Boole decrement<CR>", "Decrement number under cursor" },

    -- Trouble
    ["<S-t>"] = {
      function()
        require("trouble").toggle()
      end,
    },

    -- tab switch buffer
    ["<C-t>"] = { "<cmd> tabnew <cr>", " ", opts = { nowait = true } },

    -- Plugin inc-rename
    ["<leader>rn"] = {
      function()
        return ":IncRename " .. vim.fn.expand "<cword>"
      end,
      opt = { expr = true },
      "Rename words",
    },

    -- Howdoi AI
    ["<leader>ah"] = { ":Telescope howdoi<CR>", "Open howdoi" },
  },
  v = {
    [">"] = { ">gv", "indent" },
    ["<C-b>"] = { "y'>p", "Duplicate selection" },
  },
}

-- more keybinds!

return M
