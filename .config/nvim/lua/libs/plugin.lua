local M = {}

--- @param on_attach function 
function M.on_attach(on_attach)
    vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
            local buf = args.buf
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            on_attach(buf, client)
        end,
    })
end

function M.is_node_dir()
    local nvim_lsp = require('lspconfig')
    -- 高級関数。自分/それより上の階層でpackage.jsonが見つかるか調べ、
    -- その階層より下にカレントディレクトリがあるか探索
    return nvim_lsp.util.root_pattern('package.json')(vim.fn.getcwd())
end

return M
