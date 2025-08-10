return {
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
            cargo = {
              extraEnv = {
                RUSTFLAGS = "--cfg=web_sys_unstable_apis",
              },
          },
    opts = {
      server = {
        on_attach = require("plugins.lsp-config").on_attach,
        capabilities = require("plugins.lsp-config").capabilities,
      },
    },
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    config = function(_, opts)
      local crates = require("crates")
      crates.setup(opts)
      crates.show()
    end,
  },
}
