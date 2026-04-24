vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")

-- line numbers
vim.opt.number = true

-- highlight cursor
-- vertical
vim.opt.cursorline = true
-- horizontal
vim.opt.cursorcolumn = true

-- 4 spaces tab, not 8
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
-- use spaces, not tabs
vim.opt.expandtab = true

-- no backup files
vim.opt.backup = false

-- friendly scroll
vim.opt.scrolloff = 10

vim.opt.wrap = false
-- Searching {{{
-- highlight increment search
vim.opt.incsearch = true
-- highlight search
vim.opt.hlsearch = true
-- make search, search
vim.opt.showmatch = true
-- }}}
-- default: 20
vim.opt.history = 100


local success, err = pcall(function()
    require("modules.plug_installs")
    require("modules.lsp")
    require("modules.comment_config")
    require("modules.other_configs")
    require("modules.automation")
end)

if not success then
    print("Cannot import finished module!", err)
end
