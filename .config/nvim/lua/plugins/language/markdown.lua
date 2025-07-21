--- @module "lazy"
--- @type LazyPluginSpec
return {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "pnpm install && cd app && pnpm install",
    init = function()
        vim.g.mkdp_filetypes = { "markdown" }
    end,
}
