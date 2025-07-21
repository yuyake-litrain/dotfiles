--lspsaga
--- @module "lazy"
--- @type LazyPluginSpec
return {
    "nvimdev/lspsaga.nvim",
    opts = {
        symbol_in_winbar = { enable = false },
        finder = {
            keys = {
                shuttle = "<leader>w",
            },
        },
        lightbulb = {
            enable = false,
        },
    },
}
