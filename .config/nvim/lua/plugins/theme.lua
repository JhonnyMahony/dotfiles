return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true, -- Enables transparent background
        opacity = 0.5,
        term_colors = true,           -- Adjust terminal colors
        integrations = {
          nvimtree = {
            transparent_panel = true, -- Also make NvimTree transparent
          },
        },
      })
      vim.cmd.colorscheme "catppuccin"
    end
  }
}
--return{
--{
--  'tomasiser/vim-code-dark',
--  name = 'vscode',
--  lazy = false, -- make sure we load this during startup if it is your main colorscheme
--  priority = 1000, -- make sure to load this before all the other start plugins
--  config = function()
--    require('vscode').setup({
--        transparent = true, -- Enables transparent background
--        --opacity = 0.2,
--        --term_colors = true,           -- Adjust terminal colors
--    })
--
--    vim.cmd('colorscheme vscode')
--  end,
--}
--
--}

