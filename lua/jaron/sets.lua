local vopt = vim.opt

vopt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr-o:hor20"

-- line numbers
vopt.number = true
vopt.relativenumber = false

vopt.tabstop = 4
vopt.softtabstop = 4
vopt.shiftwidth = 4
vopt.expandtab = true

vopt.smartindent = true

vopt.swapfile = false
vopt.backup = false
vopt.undofile = true
vopt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vopt.hlsearch = true
vopt.incsearch = true

vopt.termguicolors = true
vim.o.background = ""
vim.cmd("colorscheme kanagawa")
vopt.scrolloff = 8
vopt.signcolumn = "yes"
vopt.isfname:append("@-@")

vopt.updatetime = 50
vopt.colorcolumn = "120"

-- ignore case when searching
vopt.ignorecase = true
-- auto switch to case sensitive if there is a capital letter
vopt.smartcase = true

-- exp
vopt.spell = true
vopt.spelllang = {"en_us"}
