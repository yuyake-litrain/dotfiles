--- @module "lazy"
--- @type LazyPluginSpec[]
return {
    { import = "plugins.completion.lsp" },
    { import = "plugins.completion.nvim-cmp" },
    { import = "plugins.completion.none-ls" },
    { import = "plugins.completion.lspsaga" },
    { import = "plugins.completion.snippet" },
}
