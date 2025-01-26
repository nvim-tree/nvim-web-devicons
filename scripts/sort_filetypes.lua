-- The current working directory must be set to the repo root
--
-- This file should be run from the shell with `make generate`

io.write "Sorting filetypes.lua..."
vim.cmd "noswapfile drop lua/nvim-web-devicons/filetypes.lua"
local lines = vim.api.nvim_buf_get_lines(0, 3, -2, true)
table.sort(lines)
vim.api.nvim_buf_set_lines(0, 3, -2, true, lines)
io.write " OK\n"
vim.cmd "silent! w!"
