--- @module "lazy"
--- @type LazyPluginSpec
return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        scope = {
            enabled = true,
            show_start = false,
        },
        whitespace = {
            remove_blankline_trail = true,
        },
    }
}
