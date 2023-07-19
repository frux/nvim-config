-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Tabs
vim.keymap.set('n', 't]', ':BufferNext<CR>', opts)
vim.keymap.set('n', 't[', ':BufferPrevious<CR>', opts)
vim.keymap.set('n', 'tc', ':BufferClose<CR>', opts)
vim.keymap.set('n', 't1', ':BufferGoto 1<CR>', opts)
vim.keymap.set('n', 't2', ':BufferGoto 2<CR>', opts)
vim.keymap.set('n', 't3', ':BufferGoto 3<CR>', opts)
vim.keymap.set('n', 't4', ':BufferGoto 4<CR>', opts)
vim.keymap.set('n', 't5', ':BufferGoto 5<CR>', opts)
vim.keymap.set('n', 't6', ':BufferGoto 6<CR>', opts)
vim.keymap.set('n', 't7', ':BufferGoto 7<CR>', opts)
vim.keymap.set('n', 't8', ':BufferGoto 8<CR>', opts)
vim.keymap.set('n', 't9', ':BufferGoto 9<CR>', opts)
vim.keymap.set('n', 'tp', ':BufferPin<CR>', opts)

-- Search
vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").open()<CR>', {
    desc = "Open Spectre"
})
vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
    desc = "Search on current file"
})
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Search
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})
