return {
    'smoka7/hop.nvim',
    version = "*",
    event = "VeryLazy",
    config = function()
        local hop = require('hop')
        local directions = require('hop.hint').HintDirection
        local remap = vim.keymap.set
        hop.setup {
            multi_windows = true,
        }

        -- https://github.com/phaazon/hop.nvim/wiki/Advanced-Hop
        remap('', 'f', function() hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true }) end,
            { remap = false })
        remap('', 'F', function() hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true }) end,
            { remap = false })
        remap('', 't',
            function() hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 }) end,
            { remap = false })
        remap('', 'T',
            function() hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 }) end,
            { remap = false })
        remap('', 's', function() hop.hint_char1({}) end, { remap = false })
        remap('', 'ç', function() hop.hint_lines({}) end, { remap = false })
    end
}
