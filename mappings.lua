-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["W"] = { "5w", desc = "Select 5 words forward" },
    ["B"] = { "5b", desc = "Select 5 words backward" },
    ["L"] = { "5j", desc = "Select 5 lines down" },
    ["H"] = { "5k", desc = "Select 5 lines up" },
    ["-"] = { "N", desc = "Search backwards" },
    ["="] = { "n", desc = "Search forwards" },
    ["<"] = { "<<", desc = "Shift line left" },
    [">"] = { ">>", desc = "Shift line right" },
  },
  v = {
    ["W"] = { "5w", desc = "Select 5 words forward" },
    ["B"] = { "5b", desc = "Select 5 words backward" },
    ["L"] = { "5j", desc = "Select 5 lines down" },
    ["H"] = { "5k", desc = "Select 5 lines up" },
    ["Y"] = { '"+y', desc = "Copy selection to system clipboard" },
  },
  i = {
    ["kj"] = { "<ESC>", desc = "Exit insert mode" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
