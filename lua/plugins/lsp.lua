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
                -- "standard" mantém os diagnósticos que apontam bug real
                -- (nome indefinido, atributo inexistente, argumento errado)
                typeCheckingMode = "standard",
                diagnosticSeverityOverrides = {
                  -- silencia apenas o ruído de código sem type hints
                  reportAny = "none",
                  reportUnknownArgumentType = "none",
                  reportUnknownVariableType = "none",
                  reportUnknownMemberType = "none",
                  reportUnknownParameterType = "none",
                  reportUnknownLambdaType = "none",
                  reportMissingParameterType = "none",
                  reportMissingTypeArgument = "none",
                  reportImplicitOverride = "none",
                  reportImplicitStringConcatenation = "none",
                },
              },
            },
          },
        },
      },
    },
  },
}
