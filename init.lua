vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- No Vi, just Vim & Nvim
vim.opt.compatible = false

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

local function plug_installs()
    vim.cmd([[
        call plug#begin("~/.config/nvim/lua/plugins")
            " * DO NOT Replace ' with " here

            " still great
            Plug 'airblade/vim-gitgutter' 
            Plug 'tpope/vim-fugitive'

            " Nvim
            Plug 'nvim-lualine/lualine.nvim', { 'branch': 'master' } 
            Plug 'nvim-tree/nvim-tree.lua', { 'branch': 'master' } 
            Plug 'nvim-tree/nvim-web-devicons', { 'branch': 'master' } 
            Plug 'numToStr/Comment.nvim', { 'branch': 'master' } 
            Plug 'neovim/nvim-lspconfig', { 'branch': 'master' }
            Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
            Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
            Plug 'catppuccin/nvim', { 'branch': 'vim', 'as': 'catppuccin' }
            Plug 'mcauley-penney/visual-whitespace.nvim', { 'branch': 'main' } 
        call plug#end()
        ]]
    )
end

plug_installs()

local coq = require("coq")

vim.lsp.config["lua-ls"] = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT"
            }
        }
    }
}

coq.lsp_ensure_capabilities()
coq.lsp_ensure_capabilities()

vim.lsp.enable("lua-ls")
vim.lsp.enable("pyright")

local tree_config = {
    view = {
        width = 50
    }
}

require("lualine").setup()
require("nvim-tree").setup(tree_config)
require("Comment").setup()
require("catppuccin").setup({
    flavour = "auto", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
})

vim.cmd.colorscheme "catppuccin-nvim"

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
