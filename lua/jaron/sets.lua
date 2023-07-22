vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr-o:hor20"

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.hlsearch = false
vim.opt.incsearch = false

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "120"

-- ignore case when searching
vim.opt.ignorecase = true
-- auto switch to case sensitive if there is a capital letter
vim.opt.smartcase = true

-- exp
vim.opt.spell = true
vim.opt.spelllang = {"en_us"}
