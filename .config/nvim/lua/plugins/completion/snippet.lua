--- @module "lazy"
--- @type LazyPluginSpec[]
return {
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*",
        -- install jsregexp (optional!:).
        event = "InsertEnter",
        build = "make install_jsregexp",
        config = function()
            require("luasnip.loaders.from_vscode").lazy_load()
        end,
        dependencies = {
            "rafamadriz/friendly-snippets",
        }
    },
}
