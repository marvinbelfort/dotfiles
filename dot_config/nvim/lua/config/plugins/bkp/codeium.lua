return {
    "Exafunction/codeium.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    -- reference: https://github.com/Exafunction/codeium.nvim
    config = function()
        require("codeium").setup({
            virtual_text = {
                enabled = true,
                manual = false,
            }
        })
         local function toggle_codeium()
            local vt = require("codeium.config").options.virtual_text
            vt.manual = not vt.manual
            if vt.manual then
                print("Codeium completions desabilitadas")
            else
                print("Codeium completions habilitadas")
            end
        end

        vim.keymap.set("n", "<leader>c", toggle_codeium, { noremap = true, silent = true, desc = "Toggle Codeium" })
    end
}
