return require('packer').startup({
    function(use)
    use { 'DanilaMihailov/beacon.nvim' }
  --   use {
  --   'nvim-lualine/lualine.nvim',
  --   requires = {'kyazdani42/nvim-web-devicons',
  --               opt = true}
  -- }

  use({
    'glepnir/galaxyline.nvim',
    branch = 'main',
    -- your statusline
    config = function()
      require('my_statusline')
    end,
    -- some optional icons
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  })

  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'majutsushi/tagbar' }                        -- code structure
  use { 'Yggdroot/indentLine' }                      -- see indentation
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'junegunn/gv.vim' }                          -- commit history
  use { 'windwp/nvim-autopairs' }
    -- use { 'sainnhe/everforest' }
end,
config = {
  package_root = vim.fn.stdpath('config') .. '/site/pack'
    }   

})
