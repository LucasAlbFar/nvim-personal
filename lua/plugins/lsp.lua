return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = { enabled = false },
        codebook = { enabled = false },
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "standard",
                diagnosticSeverityOverrides = {
                  reportAny = "none",
                  reportUnknownArgumentType = "none",
                  reportUnknownVariableType = "none",
                  reportUnknownMemberType = "none",
                  reportUnknownParameterType = "none",
                  reportMissingParameterType = "none",
                  reportImplicitOverride = "none",
                  reportArgumentType = "none",
                },
              },
            },
          },
        },
      },
    },
  },
}
