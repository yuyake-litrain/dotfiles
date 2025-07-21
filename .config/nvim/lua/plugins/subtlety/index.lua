--- @module "lazy"
--- @type LazyPluginSpec[]
return {
    { import = "plugins.subtlety.autopairs"},
    { import = "plugins.subtlety.guess-indent"},
    { import = "plugins.subtlety.comments"},
    { import = "plugins.subtlety.indent-blankline"},
    { import = "plugins.subtlety.bufdel"},
    { import = "plugins.subtlety.flash"}
}
