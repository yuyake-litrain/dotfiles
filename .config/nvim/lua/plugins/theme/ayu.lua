return {
    'Shatur/neovim-ayu',
    name = 'ayu',
    lazy = false,
    priority = 1000,
    opts = {
        overrides = {
            -- #########
            -- popup menu
            -- #########
            Pmenu                       = { fg = "#565B66", bg = "#0B0E14" },
            PmenuDoc                    = { fg = "#565B66", bg = "#0B0E14" },
            -- popup menu selected
            -- info: pmenusel is defined as the fb sets the background, and bg sets the text(border).
            PmenuSel                    = { fg = "#FF8F40", bg = "#0B0E14" },

            -- #########
            -- nvim-treesitter-context
            -- (the current function/struct context details top of the window)
            -- #########
            TreesitterContext           = { bg = "#151B26" },
            TreesitterContextLineNumber = { bg = "#1C2C4D" },

            -- #########
            -- cmp
            -- #########
            -- unmatched chars
            CmpItemAbbr                 = { fg = "#7A7A7A", bg = "NONE" },
            -- unmatched, depracted
            CmpItemAbbrDeprecated       = { fg = "#6A6A6A", bg = "NONE" },
            -- matched
            CmpItemAbbrMatch            = { fg = "#FF8F40", bg = "NONE" },
            -- fuzzy matched
            CmpItemAbbrMatchFuzzy       = { fg = "#FFB37D", bg = "NONE" },
            CmpItemMenu                 = { fg = "#FF8F40", bg = "NONE" },

            -- #########
            -- cmp kinds (kind icons)
            -- #########
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

            -- #########
            -- indent-blankline.nvim
            -- (indent line)
            -- #########
            -- all blanklines
            IblIndent                   = { fg = "#1C2433" },
            --current scope
            IblScope                    = { fg = "#4E648C" },
            -- indent whitespace dots
            IblWhiteSpace               = { fg = "#181F2B" },

            -- #########
            -- LineNr (neovim built-in)
            -- #########
            LineNr                      = { fg = "#373E4D" },

            -- #########
            -- other
            -- #########
            WhiteSpace                  = { fg = "#202020" },
        }
    },
    config = function(plugin, opts)
        require(plugin.name).setup(opts)
        vim.cmd.colorscheme("ayu-dark")
    end
}
