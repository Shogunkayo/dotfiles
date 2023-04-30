local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ww', function() 
    builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)

-- Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)
vim.keymap.set('n', '<leader>1', function() ui.nav_file(1) end)
vim.keymap.set('n', '<leader>2', function() ui.nav_file(2) end)
vim.keymap.set('n', '<leader>3', function() ui.nav_file(3) end)
vim.keymap.set('n', '<leader>4', function() ui.nav_file(4) end)
vim.keymap.set('n', '<leader>5', function() ui.nav_file(5) end)
vim.keymap.set('n', '<leader>6', function() ui.nav_file(6) end)
vim.keymap.set('n', '<leader>7', function() ui.nav_file(7) end)
vim.keymap.set('n', '<leader>8', function() ui.nav_file(8) end)
vim.keymap.set('n', '<leader>9', function() ui.nav_file(9) end)

-- UndoTree
vim.keymap.set('n', "<leader>u", vim.cmd.UndotreeToggle)

-- Vim Fugitive
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)

vim.keymap.set('v', 'k', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', 'j', ":m '>+1<CR>gv=gv")

vim.keymap.set('x', '<leader>p', "\"_dP")

vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

vim.keymap.set('n', '<C-k>', "<cmd>cnext<CR>zz")
vim.keymap.set('n', '<C-j>', "<cmd>cprev<CR>zz")

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

