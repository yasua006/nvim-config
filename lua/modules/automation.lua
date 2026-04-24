local automation = {}

local quit_upd_window = "q"


vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd("echo 'Opening NvimTree...'")
        vim.cmd("NvimTreeOpen")
        vim.cmd("PlugUpgrade | PlugUpdate")
        vim.cmd(quit_upd_window)
        vim.cmd("COQnow --shut-up")
        vim.cmd("GitGutterEnable")
        vim.cmd("echo 'Automation done'")
    end
})

return automation
