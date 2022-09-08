local set = vim.opt

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.tabstop = 4

set.hlsearch = true
set.incsearch = true
set.ignorecase = true
set.smartcase = true

set.termguicolors = true
set.showmode = false
set.splitbelow = true
set.splitright = true
set.wrap = true
set.breakindent = true
set.scrolloff = 5
set.fileencoding = "utf-8"
set.conceallevel = 2

set.relativenumber = true
set.number = true
set.cursorline = true
set.wildmenu = true
set.completeopt = "menuone,noselect"

set.hidden = true

set.fillchars = "eob: "

set.swapfile = false
set.showbreak = "↪"

-- From https://github.com/sainnhe/gruvbox-material/issues/5#issuecomment-716179571
vim.cmd([[
    syntax on
    set termguicolors
    colorscheme gruvbox-material
    hi Comment term=bold cterm=NONE ctermfg=245 gui=NONE guifg=#928374
]])

vim.cmd([[
    set mouse=
]])

vim.notify = require("notify")

-- vimtex config
vim.g.vimtex_view_method = "zathura"

-- vim.g.goyo_height = 90

--> LanguageTool configs
-- vim.cmd([[
--     autocmd User LanguageToolCheckDone LanguageToolSummary
--     autocmd Filetype tex LanguageToolSetUp
--     autocmd Filetype norg LanguageToolSetUp
-- ]])
