return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local keymap = vim.keymap.set

        local on_attach = function()
            keymap("n", "gR", "<cmd>Telescope lsp_references<CR>", { desc = "Show LSP references" })
            keymap("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
            keymap("n", "gd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Show LSP definitions" })
            keymap("n", "gi", "<cmd>Telescope lsp_implementations<CR>", { desc = "Show LSP implementations" })
            keymap("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", { desc = "Show LSP type definitions" })
            keymap("n", "gh", vim.lsp.buf.hover, { desc = "Show documentation for what is under cursor" })
            keymap("n", "gr", vim.lsp.buf.rename, { desc = "Smart rename" })
            keymap("n", "gy", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "Source symbols" })
            keymap({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "See available code actions" })
            keymap("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
            keymap("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
            keymap("n", "=", vim.lsp.buf.format, { desc = "Format Source" })
            keymap("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", { desc = "Show buffer diagnostics" })
            keymap("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
            keymap("n", "<leader>lr", ":LspRestart<CR>", { desc = "Lsp: Restart" })
            keymap("n", "<leader>li", ":LspInfo<CR>", { desc = "Lsp: Info" })
            keymap('n', '<leader>lh',
                function() vim.lsp.inlay_hint.enable(0, not vim.lsp.inlay_hint.is_enabled()) end,
                { desc = "Lsp: Toggle inlay hints" })
        end

        local capabilities = cmp_nvim_lsp.default_capabilities()
        -- local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

        local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end


        lspconfig["pyright"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- capabilities.workspace = {
        --     didChangeWatchedFiles = {
        --         dynamicRegistration = true,
        --     },
        -- }

        lspconfig["markdown_oxide"].setup({ capabilities = capabilities, on_attach = on_attach, })
        lspconfig["basedpyright"].setup({ capabilities = capabilities, on_attach = on_attach, })
        lspconfig["clangd"].setup({ capabilities = capabilities, on_attach = on_attach, })
        lspconfig["rust_analyzer"].setup({ capabilities = capabilities, on_attach = on_attach, })

        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lua"] = true,
                        },
                    },
                },
            },
        })
    end,
}
