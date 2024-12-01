return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true, -- Enables transparent background
        term_colors = true,           -- Adjust terminal colors
        integrations = {
          nvimtree = {
            transparent_panel = true, -- Also make NvimTree transparent
          },
          -- Add other integrations here if needed
        },
      })
      vim.cmd.colorscheme "catppuccin"
    end
  }
}

