local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
   })
end
vim.opt.rtp:prepend(lazypath)

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        local id = os.getenv("KITTY_WINDOW_ID")
        if id then
            os.execute("kitty @ --to $KITTY_LISTEN_ON set-spacing --match id:"..id.." padding=0")
        end
    end,
})

vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = function()
        local id = os.getenv("KITTY_WINDOW_ID")
        if id then
            os.execute("kitty @ --to $KITTY_LISTEN_ON set-spacing --match id:"..id.." padding=25")
        end
    end,
})

require("vim-options")
require("lazy").setup("plugins")



