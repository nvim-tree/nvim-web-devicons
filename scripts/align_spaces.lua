require("mini.align").setup {}
-- not strictly necessary here but allows testing w/o `generate_colors.lua`
vim.opt.wrapscan = false -- don't wrap after reaching end of file

-- https://github.com/echasnovski/mini.align/blob/main/lua/mini/align.lua#L633C9-L640C8
local squash_spaces = function(strings)
  for i, s in ipairs(strings) do
    strings[i] = s:gsub("()(%s+)", function(n, space)
      return n == 1 and space or " "
    end)
  end
end
local steps = { pre_split = { MiniAlign.new_step("squash", squash_spaces) } }

local function align_table()
  local from = vim.api.nvim_win_get_cursor(0)[1]
  vim.cmd "norm! }2k"
  local to = vim.api.nvim_win_get_cursor(0)[1]
  local lines = vim.api.nvim_buf_get_lines(0, from, to, true)
  table.sort(lines)
  local aligned_lines = MiniAlign.align_strings(lines, { split_pattern = "%s+" }, steps)
  vim.api.nvim_buf_set_lines(0, from, to, true, aligned_lines)
end

local function iterate_sections()
  -- NOTE: technique used (search function and nowrapscan) causes initial search to omit first table
  -- Will be simplified in consecutive PR.

  -- move to first line
  vim.cmd ":1"
  -- and align block starting here
  align_table()

  -- fn.search will return 0 when no more matches are found with falsely `wrapscan`
  local cursor
  while cursor ~= 0 do
    cursor = vim.fn.search "^local icons_by"
    align_table()
  end
end

io.write "Aligning default..."
vim.cmd "noswapfile drop lua/nvim-web-devicons/icons-default.lua"
iterate_sections()
io.write " OK\n"
vim.cmd "silent! w!"

io.write "Aligning light..."
vim.cmd "noswapfile drop lua/nvim-web-devicons/icons-light.lua"
iterate_sections()
io.write " OK\n\n"
vim.cmd "silent! w!"
