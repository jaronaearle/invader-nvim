-- [[ init.lua ]]

vim.g.mapleader = ","
vim.g.localleader = "\\"

require('vars')
require('opts')
require('keys')
require('plug')

-- require('lualine').setup {
--         options = {
-- 	theme = 'habamax'
-- 	}
-- }
