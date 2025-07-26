--- Install tree-sitter-cli before using.
--- @module "lazy"
--- @type LazyPluginSpec[]
return {
    {
        "nvim-treesitter/nvim-treesitter",
        -- build = function()
        --     local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        --     ts_update()
        -- end,
        -- event = { "BufReadPre", "BufNewFile" },
        branch = 'main',
        lazy = false,
        build = ":TSUpdate",
        opts = {
            install_dir = vim.fn.stdpath('data') .. '/site'
        },
        config = function()
            require("nvim-treesitter").install({
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
            })
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

