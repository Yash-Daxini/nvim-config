return {
  {
    "williamboman/mason.nvim",
    version = false,
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    version = false,
    config = function()
      -- require("mason-lspconfig").setup({}) //Produces error because of version update
    end
  },
  {
    "neovim/nvim-lspconfig",
    version = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig["ts_ls"].setup({
        capabilities = capabilities
      })


      vim.keymap.set('n','<K>',vim.lsp.buf.hover,{})
      vim.keymap.set('n','<gd>',vim.lsp.buf.definition,{})
      vim.keymap.set('n','<C-k>',vim.lsp.buf.code_action,{})
    end
  }
}
