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

    -- Notificatios
    ["<leader>sd"] = {
      function()
        require("notify").dismiss { silent = true, pending = true }
      end,
      "Dimmiss notification",
    },

    -- Copilot
    -- ["<Tab>"] = {
    --   function()
    --     local cmp = require "cmp"
    --     cmp.mapping(function(fallback)
    --       local copilot = require "copilot.suggestion"
    --       if copilot.is_visible() then
    --         copilot.accept()
    --       elseif cmp.visible() then
    --         local entry = cmp.get_selected_entry()
    --         if not entry then
    --           cmp.select_next_item { behavior = cmp.SelectBehavior.Select }
    --         else
    --           cmp.confirm()
    --         end
    --       elseif luasnip.expand_or_jumpable() then
    --         luasnip.expand_or_jump()
    --       else
    --         fallback()
    --       end
    --     end, { "i", "s" })
    --   end,
    --   "Test",
    -- },
    --
    -- ["<C-.>"] = {
    --   function()
    --     local cmp = require "cmp"
    --     cmp.mapping(function()
    --       if copilot.is_visible() then
    --         copilot.next()
    --       end
    --     end)
    --   end,
    -- },
    -- ["<C-,>"] = {
    --   function()
    --     local cmp = require "cmp"
    --     cmp.mapping(function()
    --       if copilot.is_visible() then
    --         copilot.prev()
    --       end
    --     end)
    --   end,
    -- },

    -- Trouble
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
