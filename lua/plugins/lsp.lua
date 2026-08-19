return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- servidores que se anexam a arquivos .py e conflitam com o basedpyright
        pylsp = { enabled = false },
        codebook = { enabled = false },
        djls = { enabled = false },
        pytest_language_server = { enabled = false },

        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "standard",
              },
            },
          },
        },
      },
    },
  },
}
