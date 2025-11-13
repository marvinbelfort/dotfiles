return {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
        vim.api.nvim_set_keymap(
            "n",
            "<leader>fb",
            ":Telescope file_browser<CR>",
            { noremap = true }
        )
    end
}
