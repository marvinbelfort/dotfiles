local opt = vim.opt
local g = vim.g


--clipboard
opt.clipboard:append { 'unnamedplus', 'unnamed' }

g.clipboard = {
    me = "xclip-xfce4-clipman",
    copy = {
        ["+"] = "xclip -selection clipboard",
        ["*"] = "xclip -selection clipboard",
    },
    paste = {
        ["+"] = "xclip -selection clipboard -o",
        ["*"] = "xclip -selection clipboard -o",
    },
    cache_enabled = 1
}

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

opt.termguicolors = true
