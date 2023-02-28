-- Plugin lifepillar/vim-colortemplate must be available on &runtimepath
--
-- The current working directory must be set to the repo root
-- Have the main file already open in another window

-- IMPORTANT: the `cterm_color` key must always be below the `color` key of the
--            same icon. Currently they are.

-- IMPORTANT: there must be an empty line between the two icon tables in the
--            main file. Currently there is.

-- After this file is sourced, the newly created file should open in the same
-- window of the main file.

-- :source this file when ready

if not jit then
  error("Neovim must be LuaJIT-enabled to source this script")
end

local function invert_color(rrggbb)
  local r, g, b = rrggbb:match"%#(%x%x)(%x%x)(%x%x)"
  r, g, b = tonumber("0x" .. r), tonumber("0x" .. g), tonumber("0x" .. b)
  r = bit.tohex(255 - r):sub(-2)
  g = bit.tohex(255 - g):sub(-2)
  b = bit.tohex(255 - b):sub(-2)
  return string.format("#%s%s%s", r, g, b)
end

--------------------------------------------------------------------------------

local fn = vim.fn

vim.cmd("drop lua/nvim-web-devicons.lua")

if not fn.bufname():find("nvim%-web%-devicons%.lua$") then
  error("The file could not be found!")
end

print("Starting!")

-- move to first line
vim.cmd(":1")
local start, finish

if fn.search("^local icons_by_filename") == 0 then
  error("Table not found!")
end
start = fn.line(".") - 1
vim.cmd("normal! }")
finish = fn.line(".")
local lines = vim.api.nvim_buf_get_lines(fn.bufnr(), start, finish, true)
lines[1] = "local icons_by_filename = {"
for i = 2, #lines do
  if lines[i]:find("^%s*color =") then
    lines[i] = lines[i]:gsub('%#%x+', function(m)
      return invert_color(m)
    end)
  end
end

if fn.search("^local icons_by_file_extension") == 0 then
  error("Table not found!")
end
start = fn.line(".") - 1
vim.cmd("normal! }")
finish = fn.line(".")
local lines2 = vim.api.nvim_buf_get_lines(fn.bufnr(), start, finish, true)
lines2[1] = "local icons_by_file_extension = {"
for i = 2, #lines2 do
  if lines2[i]:find("^%s*color =") then
    lines2[i] = lines2[i]:gsub('%#%x+', function(m)
      return invert_color(m)
    end)
  end
end
table.insert(lines2, "return {")
table.insert(lines2, "  icons_by_filename = icons_by_filename,")
table.insert(lines2, "  icons_by_file_extension = icons_by_file_extension")
table.insert(lines2, "}")

fn.writefile(lines, "lua/nvim-web-devicons-light.lua")
fn.writefile(lines2, "lua/nvim-web-devicons-light.lua", "a")

print("Finished creating new file!")

if fn.filereadable("lua/nvim-web-devicons-light.lua") == 0 then
  error("The file could not be found!")
end

vim.cmd("drop lua/nvim-web-devicons-light.lua")

print("Starting to generate cterm colors!")

-- move to first line
vim.cmd(":1")
local last = 0

while true do
  local cur = fn.search("^\\s*color =")
  if cur < last then
    break
  end
  last = cur
  local color = fn.getline("."):match("%#......")
  if fn.search("^\\s*cterm_color") < cur then
    break
  end
  if fn.getline("."):find("%d") then
    fn.setline(".", fn.substitute(fn.getline("."), '\\d\\+', function(matches)
      return tostring(vim.fn["colortemplate#colorspace#approx"](color).index)
    end, ""))
  end
end

vim.cmd(":1")
vim.cmd("wall")
print("Finished!")
