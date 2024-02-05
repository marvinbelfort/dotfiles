return {
    "lukas-reineke/lsp-format.nvim",
    config = function()
        require("lsp-format").setup({})

        local ruff = {
            -- formatCommand = [[ruff format ${INPUT} ]],
            formatCommand = [[ruff format --stdin-filename ${INPUT} --respect-gitignore --line-length 120]],
            formatStdin = true,
        }

        local stylua = {
            formatCommand = [[stylua --stdin-filepath ${INPUT} --indent-width 4 --column-width 120]],
            formatStdin = true,
        }

        require("lspconfig").efm.setup({
            on_attach = require("lsp-format").on_attach,
            init_options = { documentFormatting = true },
            settings = {
                languages = {
                    python = { ruff },
                    lua = { stylua },
                },
            },
        })
    end,
}
