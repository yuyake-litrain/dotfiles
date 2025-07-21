--- @module "lazy"
--- @type LazyPluginSpec[]
return {
    {
        'mrcjkb/rustaceanvim',
        version = '^6', -- Recommended
        lazy = false,   -- This plugin is already lazy
    },

    {
        "saecki/crates.nvim",
        event = { "BufRead Cargo.toml" },
        --- @module "crates"
        --- @type crates.UserConfig
        opts = {
            lsp = {
                enabled = true,
                actions = true,
                completion = true,
                hover = true
            },
        }
    },

}
