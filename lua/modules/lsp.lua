local lsp = {}

local coq = require("coq")

vim.lsp.config["lua_ls"] = {
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

local function lsp_configs()
    -- HTML
    vim.lsp.config["html_server"] = {
        cmd = { 'vscode-html-language-server', '--stdio' }
    }
    vim.lsp.config["css_server"] = {
        cmd = { 'vscode-css-language-server', '--stdio' }
    }

    -- JSON
    vim.lsp.config["json_server"] = {
        cmd = { 'vscode-json-language-server', '--stdio' }
    }
end

lsp_configs()

coq.lsp_ensure_capabilities()

local function lsp_enables()
    vim.lsp.enable("lua_ls")
    vim.lsp.enable("pyright")
    vim.lsp.enable("html_server")
    vim.lsp.enable("css_server")
    vim.lsp.enable("json_server")
end

lsp_enables()

return lsp
