--[[

Neovim init file
Version: 0.63.1 - 2022/07/05
Maintainer: brainf+ck
Website: https://github.com/brainfucksec/neovim-lua

--]]

-- Import Lua modules
require('packer_init')
require('core/options')
require('core/autocmds')
require('core/keymaps')
require('core/colors')
require('plugins/nvim-cmp')
require('plugins/nvim-lspconfig')

