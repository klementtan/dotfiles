local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " " -- leader key

--> OSCYank <--
map("v", "<leader>y", ":OSCYank<CR>", opts)

--> Generic <--
map("n", "<C-h>", "<C-W>h", opts)
map("n", "<C-j>", "<C-W>j", opts)
map("n", "<C-l>", "<C-W>l", opts)
map("n", "<C-k>", "<C-W>k", opts)
map("n", "<leader><CR>", ":nohlsearch<CR>", opts)


--> nvim tree mappings <--
map("n", "<leader>e", ":NvimTreeFindFileToggle<CR>", opts)
--> telescope mappings <--
map("n", "<leader>g", ":Telescope git_files<cr>", opts)
map("n", "<leader>z", ":Telescope find_files<cr>", opts)
map("n", "??", ":Telescope live_grep<cr>", opts)
map("n", "<leader>b", ":Telescope buffers<cr>", opts)
map("n", "<leader>c", ":Telescope commands<cr>", opts)
map("n", "<leader>j", ":Telescope jumplist<cr>", opts)
--> --> telescope mappings for lsp <-- <--
map("n", "gd", ":Telescope lsp_definitions<cr>", opts)
map("n", "gr", ":Telescope lsp_references<cr>", opts)
map("n", "<leader>o", ":Telescope lsp_document_symbols<cr>", opts)

--> clangd lsp <--
vim.cmd([[
    autocmd FileType c,cpp,h nnoremap <silent> <Leader>h :ClangdSwitchSourceHeader<CR>
]])

--> barbar mappings <--
map("n", "<A-,>", ":BufferPrevious<CR>", opts)
map("n", "<A-.>", ":BufferNext<CR>", opts)
map("n", "<A-<>", ":BufferMovePrevious<CR>", opts)
map("n", "<A->>", ":BufferMoveNext<CR>", opts)
map("n", "<A-1>", ":BufferGoto 1<CR>", opts)
map("n", "<A-2>", ":BufferGoto 2<CR>", opts)
map("n", "<A-3>", ":BufferGoto 3<CR>", opts)
map("n", "<A-4>", ":BufferGoto 4<CR>", opts)
map("n", "<A-5>", ":BufferGoto 5<CR>", opts)
map("n", "<A-6>", ":BufferGoto 6<CR>", opts)
map("n", "<A-7>", ":BufferGoto 7<CR>", opts)
map("n", "<A-8>", ":BufferGoto 8<CR>", opts)
map("n", "<A-9>", ":BufferGoto 9<CR>", opts)
map("n", "<A-0>", ":BufferLast<CR>", opts)
map("n", "<A-c>", ":BufferClose<CR>", opts)
map("n", "<C-p>", ":BufferPick<CR>", opts)
map("n", "<leader>bb", ":BufferOrderByBufferNumber<CR>", opts)
map("n", "<leader>bd", ":BufferOrderByDirectory<CR>", opts)
map("n", "<leader>bl", ":BufferOrderByLanguage<CR>", opts)
