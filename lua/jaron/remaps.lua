local vkeymap = vim.keymap
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

local optsFunc = function(des)
    return {noremap = true, desc = des, silent = true}
end

local leader = "<leader>"

-- set leader to space
vim.g.mapleader = " "

-- keep cursor centered while jumping half pages
vkeymap.set("n", "<C-d>", "<C-d>zz")
vkeymap.set("n", "<C-u>", "<C-u>zz")

-- delete line without yanking
vkeymap.set("n", "<leader>d", '"_d')
vkeymap.set("v", "<leader>d", '"_d')

-- set esc to jk
vkeymap.set("i", "jk", "<ESC>")
vkeymap.set("n", "jk", "<ESC>")
vkeymap.set("v", "jk", "<ESC>")

-- quick commands
vkeymap.set("n", "<leader>so", "<Cmd>source<CR>")
vkeymap.set("n", "<leader>sp", "<Cmd>PackerSync<CR>")

-- Move to previous/next
map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
map("n", "<leader>b1", "<Cmd>BufferGoto 1<CR>", optsFunc("Goto the mother fuckin first buffer"))
map("n", "<leader>b2", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<leader>b3", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<leader>b4", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<leader>b5", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<leader>b6", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<leader>b7", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<leader>b8", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<leader>b9", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<leader>b0", "<Cmd>BufferLast<CR>", opts)
-- Close buffer
map("n", "<leader>bx", "<Cmd>BufferClose<CR>", opts)

-- trigger code action
-- Better mapping -- typing '<x> catao...' triggers comp prompt
map("n", "<leader>ca", "<Cmd>lua vim.lsp.buf.code_action()<CR>", opts)
map("i", "<leader>ca", "<Cmd>lua vim.lsp.buf.code_action()<CR>", opts)

-- Save - Write/Write force
vkeymap.set("n", "<leader>w", "<Cmd>w<CR>", optsFunc("Write but even quicker"))
vkeymap.set("i", "<leader>w", "<Cmd>w<CR>", optsFunc("Write but even quicker"))
vkeymap.set("n", "<leader>wf", "<Cmd>w!<CR>", optsFunc("Write force but even quicker"))
vkeymap.set("i", "<leader>wf", "<Cmd>w!<CR>", optsFunc("Write force but even quicker"))

-- write maps  for multi window editing
-- ref: https://www.makeuseof.com/create-manage-multiple-split-windows-in-vim/
vkeymap.set("n", leader .. "hs", "<Cmd>sp<CR>", optsFunc("Split horizontal"))
vkeymap.set("n", leader .. "vs", "<Cmd>vsp<CR>", optsFunc("Split vertical"))
vkeymap.set("n", leader .. "wl", "<C-w>l", optsFunc("Go to right window"))
vkeymap.set("n", leader .. "wh", "<C-w>h", optsFunc("Go to left window"))
vkeymap.set("n", leader .. "wj", "<C-w>j", optsFunc("Go to bottom window"))
vkeymap.set("n", leader .. "wk", "<C-w>k", optsFunc("Go to top window"))

-- tmux navigation
vkeymap.set("n", "<C-h>", "<Cmd> TmuxNavigateLeft<CR>", optsFunc("Go to left window"))
vkeymap.set("n", "<C-j>", "<Cmd> TmuxNavigateDown<CR>", optsFunc("Go to bottom window"))
vkeymap.set("n", "<C-k>", "<Cmd> TmuxNavigateUp<CR>", optsFunc("Go to top window"))
vkeymap.set("n", "<C-l>", "<Cmd> TmuxNavigateRight<CR>", optsFunc("Go to right window"))
