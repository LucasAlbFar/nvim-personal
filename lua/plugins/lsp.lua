return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- servidores que se anexam a arquivos .py e conflitam com o basedpyright
        -- (respondem a "definition" sem entender código Python comum,
        --  além de usarem position encoding diferente)
        pylsp = { enabled = false },
        codebook = { enabled = false },
        djls = { enabled = false },
        pytest_language_server = { enabled = false },

        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "off",
              },
            },
          },
        },
      },
    },
  },
}
