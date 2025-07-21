--- @module "lazy"
--- @type LazyPluginSpec[]
return {
    {
        "hrsh7th/nvim-cmp",
        lazy = true,
        event = 'InsertEnter',
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-calc',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-emoji',
            'hrsh7th/cmp-cmdline',
            'octaltree/cmp-look',
            'saadparwaiz1/cmp_luasnip',
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end
                },
                sources = {
                    { name = "nvim_lsp" },
                    { name = "buffer" },
                    { name = "path" },
                    { name = "cmdline" },
                    { name = "nvim_lua" },
                    { name = "calc" },
                    { name = "look" },
                    { name = "emoji" },
                    { name = "luasnip" },
                    { name = "treesitter" },
                    { name = "lazydev",   group_index = 0 }
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-p>"] = cmp.mapping.select_prev_item(),
                    ["<C-n>"] = cmp.mapping(
                        function(_)
                            if cmp.visible() then
                                cmp.select_next_item()
                            else
                                cmp.complete()
                            end
                        end),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>']  = cmp.mapping.confirm { select = true },
                }),
                experimental = {
                    ghost_text = true,
                },
                window = {
                    completion = {
                        winhighlight = "Normal:PMenu,FloatBorder:Pmenu,Search:None,CursorLine:PMenuSel",
                        col_offset = -3,
                        side_padding = 1,
                        -- default/rounded/solid/single, etc
                        border = "single",
                    },
                    documentation = {
                        border = "single",
                        winhighlight = 'FloatBorder:Pmenu,Normal:PMenuDoc,Search:None',
                    },
                },
                formatting = {
                    expandable_indicator = true,
                    fields = { "abbr", "kind", "menu" },
                    format = require("lspkind").cmp_format({
                        mode = "symbol_text",
                        maxwidth = {
                            menu = 50,
                            abbr = 50,
                        },
                        ellipsis_char = '...',
                        show_labelDetails = true
                    })
                },
            })
            cmp.setup.cmdline({ '/', '?' }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = 'buffer' }
                }
            })
            cmp.setup.cmdline(":", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = "path" },
                    { name = "cmdline" }
                },
            })
            -- cmp-autopairs
            -- If you want insert `(` after select function or method item
            local cmp_autopairs = require('nvim-autopairs.completion.cmp')
            cmp.event:on(
                'confirm_done',
                cmp_autopairs.on_confirm_done()
            )
        end
    },
    {
        "folke/lazydev.nvim",
        ft = "lua",
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    }
}
