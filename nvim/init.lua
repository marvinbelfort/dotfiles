require("config")

local remap = vim.keymap.set

-- Keybinds
if vim.g.vscode then
    -- VSCode extension
    remap('n', '<CR>', ':Write<CR>', { noremap = false, silent = true })
else
    -- ordinary Neovim
    remap('n', '<CR>', ':w<CR>', { noremap = false, silent = true })
end



remap({ 'n', 'v', 'o' }, 'gl', 'G', { noremap = true, silent = true })
remap({ 'n', 'x' }, '-', ':noh<CR>', { noremap = true, silent = true })
remap('n', 'H', '^', { noremap = true, silent = true })
remap('n', 'L', '$', { noremap = true, silent = true })
remap('n', '<C-q>', ':qa<CR>', { noremap = true, silent = true })
remap('n', '<C-b>', ':bd<CR>', { noremap = true, silent = true })

-- Temas
vim.opt.termguicolors = true
vim.cmd.colorscheme('gruvbox')
