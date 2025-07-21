local wk = require("which-key")
local builtin = require("telescope.builtin")
local slens = require("auto-session.session-lens")
local silicon = require("nvim-silicon")
wk.add({
    mode = { "n" },
    -- ######
    --Telescope
    -- ######
    { "<leader>ff", builtin.find_files, desc = "[Telescope] Find Files", icon = { icon = "", color = "blue" } },
    { "<leader>ft", builtin.treesitter, desc = "[Telescope] Treesitter", icon = { icon = "󰙅", color = "blue" } },
    { "<leader>f/", builtin.current_buffer_fuzzy_find, desc = "[Telescope] Buffer Fuzzy Search", icon = { icon = "", color = "blue" } },
    { "<leader>fg", builtin.git_commits, desc = "[Telescope] Git Commits", icon = { icon = "", color = "blue" } },
    { "<leader>fG", builtin.git_bcommits, desc = "[Telescope] Git Commits of Current Buf", icon = { icon = "", color = "blue" } },
    { "<leader>fh", builtin.help_tags, desc = "[Telescope] Help Tags", icon = { icon = "󰘥", color = "blue" } },
    { "<leader>fM", builtin.man_pages, desc = "[Telescope] Man Pages", icon = { icon = "󰂺", color = "blue" } },
    { "<leader>fr", builtin.resume, desc = "[Telescope] Resume", icon = { icon = "", color = "blue" } },
    { "<leader>fk", builtin.keymaps, desc = "[Telescope] Keymaps", icon = { icon = "", color = "blue" } },
    { "<leader>g", builtin.live_grep, desc = "[Telescope] Live Grep", icon = { icon = "󰱼", color = "blue" } },
    { "<leader>n", "<cmd>Telescope notify<CR>", desc = "[Telescope] Notify", icon = { icon = "󰎟", color = "blue" } },
    { "<leader>bb", builtin.buffers, desc = "[Telescope] Buffers", icon = { icon = "", color = "blue" } },
    { "<leader>s", slens.search_session, desc = "[Telescope] Session", icon = { icon = "", color = "blue" } },
    {
        "<leader>fb",
        "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
        desc = "[Telescope] File Browser",
        icon = { icon = "", color = "blue" }
    },
    {
        "<leader><leader>",
        require('telescope').extensions.frecency.frecency,
        desc = "[Telescope] Frecency",
        icon = { icon = "󰤘", color = "blue" }
    },
    -- ######
    -- Silicon
    -- ######
    { "<leader>S",  silicon.clip,                            desc = "[Silicon] Take Screenshot" },
    -- ######
    -- Lspsaga
    -- ######
    { "K",          "<cmd>Lspsaga hover_doc<CR>",            desc = "[LSP] Hover Doc" },
    { "<leader>rn", "<cmd>Lspsaga rename<CR>",               desc = "[LSP] Resume" },
    { "ga",         "<cmd>Lspsaga code_action<CR>",          desc = "[LSP] Code Action" },
    { "gF",         "<cmd>Lspsaga finder<CR>",               desc = "[LSP] Finder" },
    { "gd",         "<cmd>Lspsaga peek_definition<CR>",      desc = "[LSP] Peek the definition" },
    { "gD",         "<cmd>Lspsaga goto_definition<CR>",      desc = "[LSP] Jump the definition" },
    { "gk",         "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = "[LSP] Diagnotics Next" },
    { "gK",         "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc = "[LSP] Diagnotics Prev" },
    { "<leader>t",  "<cmd>Lspsaga term_toggle<CR>",          desc = "[Term] Toggle Term by Lspsaga" },
    -- ######
    -- Aerial(source-code outliner)
    -- ######
    { "<leader>a",  "<cmd>AerialToggle<cr>",                 desc = "[Aerial] Toggle Outliner" },
    -- ######
    -- whichkey
    -- ######
    { "<leader>wk", "<cmd>WhichKey<cr>",                     desc = "[WhichKey] show all toplevel keybind" },
    -- ######
    -- lsp lines
    -- ######
    { "<Leader>l",  require("lsp_lines").toggle,             desc = "[LSP_Lines] Toggle" },
    -- ######
    -- neo-tree
    -- ######
    { "<C-f>",      "<cmd>:NeoTreeFocusToggle<cr>",          desc = "[NeoTree] Toggle" },
    -- ######
    -- Neovim default features
    -- ######
    -- ======
    -- buffers
    -- ======
    { "<leader>bd", "<cmd>:BufDel<cr>",                      desc = "Buffer Deletion" },
    { "<C-j>",      "<cmd>:bnext<cr>",                       desc = "Next Buffer" },
    { "<C-k>",      "<cmd>:bprevious<cr>",                   desc = "Previous Buffer" },


})
wk.add({
    mode = { "i", "c" },
    -- ######
    -- escape
    -- ######
    { "jj", "<ESC>", desc = "same as the esc key"},
}
)







-- ######
-- LSP
-- ######
local on_attach = require("libs.plugin").on_attach
on_attach(function(buf, client)
    set_lsp_keymaps(buf, client)
end)

function set_lsp_keymaps(buf, _)
    -- noremap is by default
    local bufopts = { silent = true, buffer = buf }
    wk.add({
        mode = "n",

        { "gi",        vim.lsp.buf.implementation,          desc = "[LSP] Implementation",          bufopts },
        { "<space>wa", vim.lsp.buf.add_workspace_folder,    desc = "[LSP] Add Workspace Folder",    bufopts },
        { "<space>wr", vim.lsp.buf.remove_workspace_folder, desc = "[LSP] Remove Workspace Folder", bufopts },
        { "<space>D",  vim.lsp.buf.type_definition,         desc = "[LSP] Type Definition",         bufopts },
        {
            "<space>wl",
            function()
                print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            end,
            desc = "[LSP] List Workspace Folders",
            bufopts
        },
        {
            "<space>fm",
            function()
                vim.lsp.buf.format({ async = true })
            end,
            desc = "[LSP] Fotmat",
            bufopts
        }
    })
end
