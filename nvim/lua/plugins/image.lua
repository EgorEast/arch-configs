return {
  "3rd/image.nvim",
  event = "VeryLazy",
  dependencies = {
    -- {
    --   "nvim-treesitter/nvim-treesitter",
    --   build = ":TSUpdate",
    --   config = function()
    --     require("nvim-treesitter.configs").setup({
    --       ensure_installed = { "markdown" },
    --       highlight = { enable = true },
    --     })
    --   end,
    -- },
  },
  opts = {
    backend = "kitty",
    integrations = {
      markdown = {
        enabled = false,
        clear_in_insert_mode = false,
        download_remote_images = true,
        only_render_image_at_cursor = false,
        filetypes = { "markdown", "vimwiki" }, -- markdown extensions (ie. quarto) can go here
      },
      neorg = {
        enabled = false,
        clear_in_insert_mode = false,
        download_remote_images = true,
        only_render_image_at_cursor = false,
        filetypes = { "norg" },
      },
      typst = {
        enabled = true,
        clear_in_insert_mode = false,
        download_remote_images = true,
        only_render_image_at_cursor = false,
        filetypes = { "typst" },
      },
      html = {
        enabled = false,
      },
      css = {
        enabled = false,
      },
    },
    max_width = nil,
    max_height = nil,
    max_width_window_percentage = nil,
    max_height_window_percentage = 50,
    kitty_method = "normal",
  },
  keys = {
    { "<leader>i", "", desc = "Image preview" },
    {
      "<leader>ie",
      function()
        require("image").enable()
      end,
      desc = "Enable image preview",
    },
    {
      "<leader>id",
      function()
        require("image").disable()
      end,
      desc = "Disable image preview",
    },
    {
      "<leader>ii",
      function()
        if require("image").is_enabled() then
          require("image").disable()
        else
          require("image").enable()
        end
      end,
      desc = "Toggle image preview",
    },
  },
}
