-- Import my core settings
require 'core.options'
require 'core.keymaps'

--------------------------------------------------------------------------------
-- Here is where Lazy lives
--------------------------------------------------------------------------------
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- Check Lazy status 
--    :Lazy
-- To update plugins you can run
--    :Lazy update
require('lazy').setup({
  require 'plugins.neotree',
  require 'plugins.colortheme',
  require 'plugins.bufferline',
  require 'plugins.lualine',    -- better status bar with info
  require 'plugins.gitsigns',   -- git indicators in gutter
  require 'plugins.treesitter', -- code highligthing
  require 'plugins.telescope',   -- fuzzy file finder
  require 'plugins.lsp'   -- Language servers 
})


