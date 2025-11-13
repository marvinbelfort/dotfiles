local opt = vim.opt
local g = vim.g
 

--clipboard
opt.clipboard:append { 'unnamedplus', 'unnamed' }

-- g.clipboard = {
--     name = "xclip-wl-clipboard",
--     copy = {
--         ["+"] = "xclip -selection clipboard || wl-copy",
--         ["*"] = "xclip -selection clipboard || wl-copy",
--     },
--     paste = {
--         ["+"] = "xclip -selection clipboard -o || wl-paste",
--         ["*"] = "xclip -selection clipboard -o || wl-paste",
--     },
--     cache_enabled = 1
-- }

-- Global Options
opt.number = true
opt.mouse = 'a'
opt.ignorecase = true
opt.smartcase = true
opt.wrap = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.ruler = true
opt.number = true
opt.swapfile = false
-- opt.relativenumber = true

-- Leader
g.mapleader = ' '
g.maplocalleader = ' '


opt.hlsearch = true
opt.list = true
opt.listchars = { tab = '󰌒 ', trail = '￮', multispace = '·' }
opt.autoread = true
opt.shortmess:append "I"
opt.showmatch = true
opt.showbreak = '󱞥'

-- Folding
function _G.foldtext()
    return vim.fn.getline(vim.v.foldstart) .. "..." .. vim.fn.trim(vim.fn.getline(vim.v.foldend))
end
function _G.foldtext2()
  local start_line = vim.fn.getline(vim.v.foldstart)
  local end_line = vim.fn.trim(vim.fn.getline(vim.v.foldend))
  local tabstop = vim.opt.tabstop:get()
  start_line = start_line:gsub("\\t", string.rep(" ", tabstop))
  return start_line .. "..." .. end_line
end
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldtext = "v:lua.foldtext2()"
vim.opt.fillchars = { fold = " " }
vim.opt.foldnestmax = 3
vim.opt.foldminlines = 1

vim.opt.foldenable =false 
vim.opt.foldlevelstart = 99  -- Mantém os folds como estavam na última edição
--

opt.termguicolors = true
