-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- setup lazu.nvim
require("lazy").setup({
    --- @module "lazy"
    --- @type LazyPluginSpec[]
    spec = {
        { import = "plugins.completion.index" },
        { import = "plugins.ui.statusline.lualine" },
        { import = "plugins.subtlety.index" },
        { import = "plugins.ui.index" },
        { import = "plugins.theme.catppuccin" },
        { import = "plugins.theme.ayu" },
        { import = "plugins.language.index" },
        { import = "plugins.session.auto-session" },
        { import = "plugins.ui.lsp.index" },
        { import = "plugins.git.index" },
        { import = "plugins.tools.silicon" },
        { import = "plugins.libs.index" },
    },
    install = {
        colorscheme = { "ayu-dark" }
    }
})

