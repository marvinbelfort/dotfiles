return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local keymap = vim.keymap.set

        local capabilities = cmp_nvim_lsp.default_capabilities()

        local attach_group = vim.api.nvim_create_augroup("user_lsp_keymaps", { clear = true })
        vim.api.nvim_create_autocmd("LspAttach", {
            group = attach_group,
            callback = function(args)
                local bufnr = args.buf
                if not vim.api.nvim_buf_is_valid(bufnr) then
                    return
                end

                local applied = pcall(vim.api.nvim_buf_get_var, bufnr, "user_lsp_keymaps_applied")
                if applied then
                    return
                end
                vim.api.nvim_buf_set_var(bufnr, "user_lsp_keymaps_applied", true)

                local function buf_map(mode, lhs, rhs, desc)
                    keymap(mode, lhs, rhs, { buffer = bufnr, desc = desc })
                end

                buf_map("n", "gR", "<cmd>Telescope lsp_references<CR>", "Show LSP references")
                buf_map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
                buf_map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", "Show LSP definitions")
                buf_map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", "Show LSP implementations")
                buf_map("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", "Show LSP type definitions")
                buf_map("n", "gh", vim.lsp.buf.hover, "Show documentation for what is under cursor")
                buf_map("n", "gr", vim.lsp.buf.rename, "Smart rename")
                buf_map("n", "gy", "<cmd>Telescope lsp_document_symbols<CR>", "Source symbols")
                keymap({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr, desc = "See available code actions" })
                buf_map("n", "[d", vim.diagnostic.goto_prev, "Go to previous diagnostic")
                buf_map("n", "]d", vim.diagnostic.goto_next, "Go to next diagnostic")
                buf_map("n", "=", vim.lsp.buf.format, "Format Source")
                buf_map("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", "Show buffer diagnostics")
                buf_map("n", "<leader>d", vim.diagnostic.open_float, "Show line diagnostics")
                buf_map("n", "<leader>lr", ":LspRestart<CR>", "Lsp: Restart")
                buf_map("n", "<leader>li", ":LspInfo<CR>", "Lsp: Info")
                keymap("n", "<leader>lh", function()
                    vim.lsp.inlay_hint.enable(bufnr, not vim.lsp.inlay_hint.is_enabled(bufnr))
                end, { buffer = bufnr, desc = "Lsp: Toggle inlay hints" })
            end,
        })

        local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        vim.lsp.config("*", { capabilities = capabilities })

        local function configure(server, overrides)
            if overrides then
                vim.lsp.config(server, vim.tbl_deep_extend("force", {}, overrides))
            end

            local resolved = vim.lsp.config[server]
            if type(resolved) ~= "table" then
                vim.notify(string.format("LSP %s configuration not found", server), vim.log.levels.ERROR)
                return
            end

            local cmd = resolved and resolved.cmd
            local bin = nil
            if type(cmd) == "table" then
                bin = cmd[1]
            elseif type(cmd) == "string" then
                bin = cmd
            end

            if bin and vim.fn.executable(bin) == 0 then
                vim.notify(
                    string.format("LSP %s not started: command %s not found in PATH", server, bin),
                    vim.log.levels.WARN
                )
                return
            end

            vim.lsp.enable(server)
        end

        configure("pyright")
        configure("basedpyright")
        configure("clangd")
        configure("rust_analyzer")
        configure("markdown_oxide")
        configure("lua_ls", {
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
