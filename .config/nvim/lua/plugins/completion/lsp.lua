local ensure_installed = {
    "svelte",
    "denols",
    "tailwindcss",
    "rust_analyzer",
    "lua_ls",
    "astro",
    "eslint",
    "html",
    "jsonls",
    "pylsp",
    "slint_lsp",
    "ts_ls",
    "vue_ls",
    "yamlls",
    "biome",
    "mdx_analyzer"
}

vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
                disable = { "lowercase-global" },
            },
            format = {
                enable = true,
            },
        },
    },
})
vim.lsp.config('denols', {
    on_attach = function(client)
        if require("libs.plugin").is_node_dir() then
            client.stop(true)
        end
    end
})
vim.lsp.config('ts_ls', {
    on_attach = function(client)
        if not require("libs.plugin").is_node_dir() then
            client.stop(true)
        end
    end
})

vim.lsp.enable(ensure_installed)

--- @module "lazy"
--- @type LazyPluginSpec[]
return {
    {
        "neovim/nvim-lspconfig",
    },
    { "williamboman/mason.nvim", config = true },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = ensure_installed,
            automatic_enable = {
                exclude = { "rust_analyzer", "lua_ls", "ts_ls" }
            },
            config = function()
            end
        },
    },
    { "onsails/lspkind.nvim",    lazy = true },
}
