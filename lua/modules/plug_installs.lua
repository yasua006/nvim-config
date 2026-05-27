local plug_installs = {}

-- change to true, if on Windows
local is_os_windows = false


local function handle_config_path()
    local config_path = ""

    if is_os_windows then
        config_path = "~/AppData/Local/nvim/lua/plugins"
    else
        config_path = "~/.config/nvim/lua/plugins"
    end

    return config_path
end


local function handle_inv_config_path(config_path)
    if not config_path or config_path == "" then
        print("Empty or invalid - config path!")
        return
    end
end


local function main()
    local config_path = handle_config_path()

    handle_inv_config_path(config_path)

    vim.fn["plug#begin"](config_path)

    vim.cmd([[
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

        Plug 'ms-jpq/coq_nvim', { 'branch': 'coq' }
        Plug 'ms-jpq/coq.artifacts', { 'branch': 'artifacts' }

        Plug 'mcauley-penney/visual-whitespace.nvim', { 'branch': 'main' }
        Plug 'Pocco81/auto-save.nvim', { 'branch': 'main' }

        Plug 'MunifTanjim/prettier.nvim'
        Plug 'jose-elias-alvarez/null-ls.nvim'

        Plug 'catppuccin/nvim', { 'branch': 'vim', 'as': 'catppuccin' }
    ]])

    vim.fn["plug#end"]()
end

main()

return plug_installs
