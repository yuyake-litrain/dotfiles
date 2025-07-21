--- @module "lazy"
--- @type LazyPluginSpec
return {
    "rcarriga/nvim-notify",
    name = "notify",
    config = function(plugin, _)
        vim.notify = require(plugin.name)
        require("telescope").load_extension(plugin.name)
    end,
}
