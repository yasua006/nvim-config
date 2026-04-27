local other_configs = {}

local tree_config = {
    view = {
        width = 50
    },
    filters = {
        git_ignored = false
    }
}

local image_clip_config = {
    default = {
        dir_path = "images"
    }
}

require("lualine").setup()
require("nvim-tree").setup(tree_config)
require("prettier").setup()
require("null-ls").setup()
require("img-clip").setup(image_clip_config)

require("catppuccin").setup({
    flavour = "auto", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
})
require("auto-save").setup()

vim.cmd.colorscheme "catppuccin-nvim"

return other_configs
