-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', 'S', ':w<CR>')
map('n', 'Q', ':q<CR>')
map('n', 'L', ':tabnext<CR>')
map('n', 'H', ':tabprevious<CR>')

map('n', 'Y', '<Esc>Vy')
map('i', '<S-Tab>', '<Esc>yiWi<<Esc>Emma></<C-r>"><Esc>`ma')


map('n', '<leader>cp', ':lcd %:p:h<CR> :let @+=expand("%:~")<CR>')
map('n', '<leader>no', ':vs ~/note<CR>')
map('n', '<leader>r', ':so %<CR>')

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
map('n', '<C-t>', ':Term<CR>', { noremap = true })  -- open
map('t', '<Esc>', '<C-\\><C-n>')                    -- exit

map('n', '<C-f>', ':CtrlSF ')
map('n', '<C-p>', ':call fzf#run(fzf#wrap({"source": "git ls-files", "options": "--reverse"}))<CR>')

-- NvimTree
map('n', '<C-n>', ':NERDTreeToggle<CR>')
map('n', '<C-b>', ':NERDTreeFind<CR>')
