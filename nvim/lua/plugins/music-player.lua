return {
  "AntonVanAssche/music-controls.nvim",
  keys = {
    {
      "<Leader>m",
      "",
      desc = "Music player",
    },
    { "<leader>mp", ":MPlay<cr>", desc = "Toggle play/pause the current track" },
    { "<leader>mP", ":MPrev<cr>", desc = "Play the next track" },
    { "<leader>mn", ":MNext<cr>", desc = "Play the previous track" },
  },
  -- config = function()
  --   require("lualine").setup({
  --     sections = {
  --       lualine_x = {
  --         require("music-controls")._statusline,
  --       },
  --     },
  --   })
  -- end,
}
