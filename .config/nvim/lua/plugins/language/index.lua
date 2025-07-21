--- @module "lazy"
--- @type LazyPluginSpec[]
return {
    { "slint-ui/vim-slint" },
    { import = "plugins.language.treesitter" },
    { import = "plugins.language.rust" },
    { import = "plugins.language.markdown" },
}
