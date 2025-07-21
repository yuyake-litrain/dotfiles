function set_stylua_enable(_, client)
    if client.name == "lua_ls" then
        local cwd = vim.fn.getcwd()
        local path = require("plenary.path")
        if path:new(cwd, "stylua.toml"):exists() or path:new(cwd, ".stylua.toml"):exists() then
            local settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                        disable = { "lowercase-global" },
                    },
                    format = {
                        enable = false,
                    },
                },
            }
            client.notify(
                vim.lsp.protocol.Methods.workspace_didChangeConfiguration,
                { settings = settings }
            )
            require('null-ls').enable("stylua")
        else
            local settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                        disable = { "lowercase-global" },
                    },
                    format = {
                        enable = true,
                    },
                },
            }
            client.notify(
                vim.lsp.protocol.Methods.workspace_didChangeConfiguration,
                { settings = settings }
            )

            require('null-ls').disable("stylua")
        end
    end
end

local on_attach = require("libs.plugin").on_attach

on_attach(function(buf, client)
    set_stylua_enable(buf, client)
end)

--- @module "lazy"
--- @type LazyPluginSpec
return {
    "nvimtools/none-ls.nvim",
    name = "null-ls",
    opts = {},
    config = function(plugin, opts)
        local null_ls = require(plugin.name)
        local sources = {
            null_ls.builtins.formatting.prettier,
            null_ls.builtins.formatting.stylua,
        }

        for i = 1, #sources do
            if opts.sources then
                table.insert(opts.sources, sources[i])
            else
                opts["sources"] = { sources[i] }
            end
        end

        null_ls.setup(opts)
    end,
}
