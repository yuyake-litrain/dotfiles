--- @module "lazy"
--- @type LazyPluginSpec
return {
    -- whichkey
    "folke/which-key.nvim",
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,

}
