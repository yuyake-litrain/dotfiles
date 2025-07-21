local function getbufname()
    return vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf())
end

--- @module "lazy"
--- @type LazyPluginSpec
return {
    -- create code images
    "michaelrommel/nvim-silicon",
    lazy    = true,
    cmd     = "Silicon",
    main    = "nvim-silicon",
    opts    = {
        disable_defaults = true,
        font    = "FiraCode Nerd Font Mono=34;IBM Plex Sans JP;Noto Color Emoji",
        theme   = "OneHalfDark",
        language= function()
            local extension = vim.fn.fnamemodify(getbufname(), ":e")
            return extension
        end,
        window_title = function()
            local filename = vim.fn.fnamemodify(getbufname(), ":t")
            return filename
        end
    }
}
