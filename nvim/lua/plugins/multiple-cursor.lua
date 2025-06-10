-- https://github.com/brenton-leighton/multiple-cursors.nvim
return {
  "brenton-leighton/multiple-cursors.nvim",
  version = "*", -- Use the latest tagged version
  opts = {}, -- This causes the plugin setup function to be called
  keys = {
    { "<C-j>", ":MultipleCursorsAddDown<CR>", mode = { "n", "x" }, desc = "Add cursor and move down" },
    { "<C-k>", ":MultipleCursorsAddUp<CR>", mode = { "n", "x" }, desc = "Add cursor and move up" },

    { "<C-LeftMouse>", ":MultipleCursorsMouseAddDelete<CR>", mode = { "n", "i" }, desc = "Add or remove cursor" },
  },
}
