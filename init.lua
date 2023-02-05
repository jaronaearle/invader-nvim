vim.g.mapleader = ","
vim.g.localleader = "\\"

require('vars')
require('opts')
require('keys')
require('plug')

require('nvim-tree').setup{}

require('lualine').setup{
     options = {
         icons_enabled = true,
         theme = 'codedark'
	}
}

require('nvim-autopairs').setup{}

