--- @module "lazy"
--- @type LazyPluginSpec[]
return {
    -- don't open file when spacific buffer selected
    {
        "stevearc/stickybuf.nvim",
        config = true
    },

    -- buffer resizing
    {
        "kwkarlwang/bufresize.nvim",
        config = true
    },
}
