--- @module "lazy"
--- @type LazyPluginSpec[]
return {
    {
        "nvim-treesitter/nvim-treesitter",
        -- build = function()
        --     local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        --     ts_update()
        -- end,
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup {
                auto_install = true,
                sync_install = false,
                ignore_install = {},
                modules = {},
                highlight = {
                    enable = true,
                    disable = {}
                },
                indent = {
                    enable = true,
                    disable = {
                        "slint"
                    },
                },
                ensure_installed = {
                    "tsx",
                    "lua",
                    "rust",
                    "html",
                    "css",
                    "toml",
                    "yaml",
                    "json",
                    "json5",
                    "diff",
                    "gitcommit",
                    "glsl",
                    "markdown",
                    "ruby",
                    "javascript",
                    "typescript",
                    "vue",
                    "vim",
                    "vala",
                    "python",
                    "markdown_inline",
                    "make",
                    "gitignore",
                    "git_rebase",
                    "cpp",
                    "cmake",
                    "c",
                    "c_sharp",
                    "kotlin",
                    "slint",
                    "svelte",
                    "regex",
                    "astro"
                },
            }
        end
    },

    {
        "nvim-treesitter/nvim-treesitter-context",
        config = true
    },
    {
        "davidmh/mdx.nvim",
        config = true
    }
}
