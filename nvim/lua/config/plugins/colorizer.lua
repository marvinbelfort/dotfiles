return {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require 'colorizer'.setup({
        }, {
            mode = 'foreground',
            RRGGBBAA = true,
        })
    end,
}
