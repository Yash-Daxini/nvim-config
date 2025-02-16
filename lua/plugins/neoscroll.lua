return {
  "karb94/neoscroll.nvim",
  config = function()
    require("neoscroll").setup({ mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>" } })
    vim.keymap.set("n", "<C-Up>", "<C-u>", { remap = true })
    vim.keymap.set("n", "<C-Down>", "<C-d>", { remap = true })
  end,
}
