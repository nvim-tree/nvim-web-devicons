-- Plugin echasnovski/mini.align must be available on &runtimepath
--
-- The current working directory must be set to the repo root
--
-- This file should be run from the shell with `make generate`

require("mini.align").setup {}

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
  local lines = vim.api.nvim_buf_get_lines(0, 1, -2, true)
  table.sort(lines)
  local aligned_lines = MiniAlign.align_strings(lines, { split_pattern = "%s+" }, steps)
  vim.api.nvim_buf_set_lines(0, 1, -2, true, aligned_lines)
end

for _, theme in ipairs { "default", "light" } do
  for _, file in ipairs(_G.ICON_FILES) do
    local f = string.format("%s/%s", theme, file)
    io.write(string.format("Aligning %s...", f))
    vim.cmd(string.format("noswapfile drop lua/nvim-web-devicons/%s", f))
    align_table()
    io.write " OK\n"
    vim.cmd "silent! w!"
  end
end
