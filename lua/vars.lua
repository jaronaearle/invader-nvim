local g = vim.g
g.t_co = 256
g.background = "dark"

local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.path = vim.o.path .. ',' .. packer_path

