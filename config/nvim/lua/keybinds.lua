-- File for all Basic Keybinds

local A = vim.api
local opts = { silent = true }

local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true})
end

-- NvimTree
-- <leader> is \
map("n", "<leader>f", ":NvimTreeToggle<CR>")

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>ft", ":Telescope live_grep<CR>")
map("n", "<leader>fp", ":Telescope projects<CR>")
map("n", "<leader>fb", ":Telescope buffers<CR>")

-- TODO function that makes it easy to create keymaps for typing something common on the buffer.
-- Something like GO's main package or Python's main
