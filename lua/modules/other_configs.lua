local tree_config = {
    view = {
        width = 50
    }
}

require("lualine").setup()
require("nvim-tree").setup(tree_config)
require("prettier").setup()
require("null-ls").setup()

require("catppuccin").setup({
    flavour = "auto", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
})
require("auto-save").setup()

vim.cmd.colorscheme "catppuccin-nvim"
