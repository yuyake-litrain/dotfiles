--- @module "lazy"
--- @type LazyPluginSpec
return {
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup()
    end,
}
