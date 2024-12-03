local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({ { import = "yam.plugins" }, { import = "yam.plugins.lsp"} }, {
    chequer = {
        enabled = true,
        notify = false,
    }
})
-- Notiffy when Lazy does a change
--[[
require("lazy").setup("yam.plugins", {
    change_detection = {
        notify = false,
    },
})
]]
