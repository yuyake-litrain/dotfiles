--- @module "lazy"
--- @type LazyPluginSpec
return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = false,
    config = function()
        vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
        require("neo-tree").setup(
            --- @module "neo-tree"
            --- @type neotree.Config.Base
            {
                popup_border_style = "single",
                source_selector = {
                    statusline = true,
                    truncation_character = "…"
                },
                window = {
                    mappings = {
                        ["<C-f>"] = "noop"
                    }
                }
            }
        )
    end,
}
