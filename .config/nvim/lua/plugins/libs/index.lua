--- @module "lazy"
--- @type LazyPluginSpec[]

return {
    -- ##########
    -- libraries
    -- ##########
    -- common
    { "nvim-lua/plenary.nvim",        lazy = true },
    -- ui
    { "MunifTanjim/nui.nvim",         lazy = true },
    -- icons
    { "echasnovski/mini.icons",       lazy = true, opts = {} },
    { "nvim-tree/nvim-web-devicons",  lazy = true },
    { "lambdalisue/nerdfont.vim" },
    -- database
    { "kkharji/sqlite.lua",           lazy = true },
    { "kyazdani42/nvim-web-devicons", lazy = true },

}
