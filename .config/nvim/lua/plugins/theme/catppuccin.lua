return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
        flavour = "mocha",
        color_overrides = {
            mocha = {
                base   = "#121212",
                mantle = "#121212",
                crust  = "#121212",
            },
        },
        highlight_overrides = {
            mocha = function(_)
                return {
                    Pmenu                       = { fg = "#333345", bg = "#121212" },
                    PmenuSel                    = { fg = "#000000", bg = "#957FB8" },
                    PmenuDoc                    = { fg = "#d2d2d2", bg = "#121212" },
                    TreesitterContext           = { bg = "#212121" },
                    TreesitterContextLineNumber = { bg = "#212121" },
                    CmpItemAbbrDeprecated       = { fg = "#7E8294", bg = "NONE" },
                    CmpItemAbbrMatch            = { fg = "#82AAFF", bg = "NONE" },
                    CmpItemAbbrMatchFuzzy       = { fg = "#82AAFF", bg = "NONE" },
                    CmpItemMenu                 = { fg = "#C792EA", bg = "NONE" },
                    CmpItemKindField            = { fg = "#B5585F" },
                    CmpItemKindProperty         = { fg = "#B5585F" },
                    CmpItemKindEvent            = { fg = "#B5585F" },
                    CmpItemKindText             = { fg = "#9FBD73" },
                    CmpItemKindEnum             = { fg = "#9FBD73" },
                    CmpItemKindKeyword          = { fg = "#9FBD73" },
                    CmpItemKindConstant         = { fg = "#D4BB6C" },
                    CmpItemKindConstructor      = { fg = "#D4BB6C" },
                    CmpItemKindReference        = { fg = "#D4BB6C" },
                    CmpItemKindFunction         = { fg = "#A377BF" },
                    CmpItemKindStruct           = { fg = "#A377BF" },
                    CmpItemKindClass            = { fg = "#A377BF" },
                    CmpItemKindModule           = { fg = "#A377BF" },
                    CmpItemKindOperator         = { fg = "#A377BF" },
                    CmpItemKindVariable         = { fg = "#7E8294" },
                    CmpItemKindFile             = { fg = "#7E8294" },
                    CmpItemKindUnit             = { fg = "#D4A959" },
                    CmpItemKindSnippet          = { fg = "#D4A959" },
                    CmpItemKindFolder           = { fg = "#D4A959" },
                    CmpItemKindMethod           = { fg = "#6C8ED4" },
                    CmpItemKindValue            = { fg = "#6C8ED4" },
                    CmpItemKindEnumMember       = { fg = "#6C8ED4" },
                    CmpItemKindInterface        = { fg = "#58B5A8" },
                    CmpItemKindColor            = { fg = "#58B5A8" },
                    CmpItemKindTypeParameter    = { fg = "#58B5A8" },
                    WhiteSpace                  = { fg = "#202020" },
                    IblScope                    = { fg = "#646471" },
                    IblWhiteSpace               = { fg = "#181F2B" },
                }
            end,
        },
    },
    config = function(plugin, opts)
        require(plugin.name).setup(opts)
        -- vim.cmd.colorscheme("catppuccin")
    end
}
