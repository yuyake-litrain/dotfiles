--- @module "lazy"
--- @type LazyPluginSpec[]
return {
    { import = "plugins.ui.nvim-scrollbar" },
    { import = "plugins.ui.noice" },
    { import = "plugins.ui.bufferline.bufferline" },
    { import = "plugins.ui.telescope.index" },
    { import = "plugins.ui.nvim-notify" },
    { import = "plugins.ui.file-manager.oil" },
    { import = "plugins.ui.file-manager.neo-tree" },
    { import = "plugins.ui.dashboard.alpha" },
    { import = "plugins.ui.buffer" },
    { import = "plugins.ui.whichkey" }
}
