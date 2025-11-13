return {
    "lukas-reineke/lsp-format.nvim",
    config = function()
        local lsp_format = require("lsp-format")
        lsp_format.setup({})

        local ruff = {
            -- formatCommand = [[ruff format ${INPUT} ]],
            formatCommand = [[ruff format --stdin-filename ${INPUT} --respect-gitignore --line-length 120]],
            formatStdin = true,
        }

        local stylua = {
            formatCommand = [[stylua --stdin-filepath ${INPUT} --indent-width 4 --column-width 120]],
            formatStdin = true,
        }

        local base = vim.lsp.config.efm or {}
        local base_on_attach = base.on_attach

        vim.lsp.config("efm", {
            filetypes = { "python", "lua" },
            init_options = { documentFormatting = true },
            settings = {
                languages = {
                    python = { ruff },
                    lua = { stylua },
                },
            },
            on_attach = function(client, bufnr)
                if type(base_on_attach) == "function" then
                    base_on_attach(client, bufnr)
                end
                lsp_format.on_attach(client, bufnr)
            end,
        })

        local cmd = vim.lsp.config.efm and vim.lsp.config.efm.cmd
        local bin = nil
        if type(cmd) == "table" then
            bin = cmd[1]
        elseif type(cmd) == "string" then
            bin = cmd
        end

        if not bin or vim.fn.executable(bin) == 1 then
            vim.lsp.enable("efm")
        else
            vim.notify(
                string.format("LSP efm not started: command %s not found in PATH", bin),
                vim.log.levels.WARN
            )
        end
    end,
}
