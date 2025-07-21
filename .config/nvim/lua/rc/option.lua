local tabstop        = 4

vim.opt.fileencoding = "utf-8"
vim.opt.clipboard    = "unnamedplus"
vim.g.mapleader      = " "
vim.o.tabstop        = tabstop
vim.o.shiftwidth     = tabstop
vim.o.softtabstop    = tabstop
vim.o.expandtab      = true
vim.o.ignorecase     = true
vim.o.autoindent     = true
vim.o.cursorline     = true
vim.o.laststatus     = 3
vim.o.undofile       = true
vim.opt.list         = true
vim.o.termguicolors  = true
vim.o.number         = true
vim.opt.listchars:append "space:⋅"
vim.diagnostic.config({
    virtual_lines = true,
    virtual_text = false
})

if vim.g.neovide then
    vim.o.guifont                 = "Fira Code"
    vim.g.neovide_scale_factor    = 0.8
    vim.o.linespace               = 8
    vim.g.neovide_cursor_vfx_mode = "pixiedust"
    -- vim.g.neovide_floating_shadow = true
    -- vim.g.neovide_floating_z_height = 10
    -- vim.g.neovide_light_radius= 5
end
