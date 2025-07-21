--- @module "lazy"
--- @type LazyPluginSpec
return {
    "akinsho/bufferline.nvim",
    version = "*",
    opts = {
        options = {
            -- mode = "tabs",
            -- separator_style = "slant",
            show_buffer_close_icons = false,
            themable = false,
            show_close_icon = false,
            color_icons = true
        },
        highlights = {
            -- `visible` is applied to opened and not forcused windows
            fill = {
                bg = '#000000',
            },
            buffer_selected = {
                bg = '#101010',
                fg = '#b3b3b3',
            },
            close_button_selected = {
                bg = '#b3b3b3',
                fg = '#383838',
            },
            indicator_selected = {
                fg = '#36a3d9',
            },
            modified = {
                fg = '#945056',
            },
            modified_selected = {
                fg = '#ff4e70',
            },
            background = {
                bg = '#161616',
            },
            separator = {
                bg = '#161616',
                fg = '#363636',
            },
            diagnostic_visible = {
                fg = '#ff0000',
                bg = '#ff0000',
            },
            numbers = {
                bg = '#ff0000',
            },
            numbers_visible = {
                bg = '#ff0000',
            },
            offset_separator = {
                bg = "#ff0000",
            },
            duplicate = {
                bg = "#161616",
                fg = "#297ba3"
            }
        },
    }
}
