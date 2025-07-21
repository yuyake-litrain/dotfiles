--- @module "lazy"
--- @type LazyPluginSpec
return {
    "goolord/alpha-nvim",
    config = function()
        require("alpha").setup(require("alpha.themes.dashboard").config)
    end,
}
