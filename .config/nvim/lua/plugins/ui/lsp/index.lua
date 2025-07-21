--- @module "lazy"
--- @type LazyPluginSpec[]
return {
    { import = "plugins.ui.lsp.aerial" },
    { import = "plugins.ui.lsp.trouble" },
    -- lsp diagnostic line
    {
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        config = function()
            require("lsp_lines").setup()
        end,
    },

}
