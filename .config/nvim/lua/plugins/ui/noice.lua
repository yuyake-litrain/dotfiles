--- @module "lazy"
--- @type LazyPluginSpec
return {
    "folke/noice.nvim",
    opts = {
        messages = {
            view = "mini",
            view_error = "mini",
            view_warn = "mini",
        },
        views = {
            mini = {
                win_options = {
                    winblend = 0,
                },
            },
        },
        lsp = {
            override = {
                ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                ["vim.lsp.util.stylize_markdown"] = true,
                ["cmp.entry.get_documentation"] = true,
            },
        },
        presets = {
            command_palette = true,       -- position the cmdline and popupmenu together
            long_message_to_split = true, -- long messages will be sent to a split
            inc_rename = false,           -- enables an input dialog for inc-rename.nvim
            lsp_doc_border = false,       -- add a border to hover docs and signature help
        },
    }
}
