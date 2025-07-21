--- @module "lazy"
--- @type LazyPluginSpec
return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    config = function()
        vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
        require("neo-tree").setup({
            popup_border_style = "rounded",
            source_selector = {
                statusline = true,
            },
        })
    end,
}
