local map = vim.api.nvim_set_keymap

map('i', 'jk', '<ESC>', {})
map('v', 'jk', '<ESC>', {})

map('n', 'n', [[:NvimTreeToggle]], {})
map('n', 't', [[:TagNarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})

--EXP
-- map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, slient = true })

