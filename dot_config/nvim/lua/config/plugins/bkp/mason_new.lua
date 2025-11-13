
return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        -- import mason-tool-installer
        local mason_tool_installer = require("mason-tool-installer")

        -- setup mason with UI icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        -- setup mason-lspconfig with LSP server names
        mason_lspconfig.setup({
            ensure_installed = {
                "rust_analyzer",
                "lua_ls",
                "bashls",
                "clangd",
                "cmake",
                "jsonls",
            },
            automatic_installation = true,
        })

        -- setup mason-tool-installer with proper tool names (binaries)
        mason_tool_installer.setup({
            ensure_installed = {
                -- LSP servers (com nomes do registry do mason)
                "lua-language-server",
                "rust-analyzer",
                "bash-language-server",
                "clangd",
                "cmake-language-server",
                "json-lsp",
                "yaml-language-server",

                -- Formatadores e linters
                "prettier",        -- JS/TS formatter
                "stylua",          -- Lua formatter
                "isort",           -- Python import sorter
                "black",           -- Python formatter
                "pylint",          -- Python linter
                "shellcheck",      -- Shell linter
                "shfmt",           -- Shell formatter
                "clang-format",    -- C/C++ formatter
            },
        })
    end,
}
