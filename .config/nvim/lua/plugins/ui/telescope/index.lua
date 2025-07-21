--- @module "lazy"
--- @type LazyPluginSpec[]
return {

    {
        "nvim-telescope/telescope.nvim",
        version = "0.1.8",
        config = function()
            require("telescope").setup({
                extensions = {
                    file_browser = {
                        theme = "ivy",
                        hijack_netrw = true,
                    },
                },
            })
        end,

    },

    -- ##########
    -- extensions
    -- ##########

    -- telescope-frecency
    {
        "nvim-telescope/telescope-frecency.nvim",
        config = function()
            require("telescope").load_extension("frecency")
        end,
    },

    -- telescope-file-browser
    {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim" },
        config = function()
            require("telescope").load_extension("file_browser")
        end,
    },

}
