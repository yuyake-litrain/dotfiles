-- statusline(lualine)
--- @module "lazy"
--- @type LazyPluginSpec[]
return {
    {
        'nvim-lualine/lualine.nvim',
        opts = {
            options = {
                theme = 'ayu_dark',
                component_separators = { left = '', right = '' },
                globalstatus = true,
                section_separators = { left = '', right = '' },
                disabled_filetypes = {
                    "lazy",
                    "neo-tree",
                    "fern",
                    "noice",
                },
            },

        }
    },
    { 'kyazdani42/nvim-web-devicons', lazy = true }
}
