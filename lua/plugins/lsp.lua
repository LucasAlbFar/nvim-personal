return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = { enabled = false },
        codebook = { enabled = false },
      },
    },
  },
}
