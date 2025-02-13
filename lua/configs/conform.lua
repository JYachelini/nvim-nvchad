local options = {
  format = {
    async = true,
    lsp_fallback = true,
  },

  formatters_by_ft = {
    lua = { "stylua" },
    typescript = { "prettierd" },
    terraform = { "terraform_fmt" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
