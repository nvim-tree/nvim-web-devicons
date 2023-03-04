-- Plugin lifepillar/vim-colortemplate must be available on &runtimepath
--
-- The current working directory must be set to the repo root

-- IMPORTANT: the `cterm_color` key must always be below the `color` key of the
--            same icon. Currently they are.

-- This file should be run from the shell with `make colors`

local fn = vim.fn

if not jit then
  error("Neovim must be LuaJIT-enabled to source this script")
end

if fn.filereadable("lua/nvim-web-devicons.lua") == 0 then
  error("lua/nvim-web-devicons.lua not found")
end

if not vim.o.runtimepath:find("vim%-colortemplate") then
  error("lifepillar/vim-colortemplate must be present in the runtimepath.")
end

--------------------------------------------------------------------------------
-- Local functions
--------------------------------------------------------------------------------

local light78 = 255 * 21 / 8 -- (255 * 3) * 7 / 8
local light34 = 255 * 9 / 4 -- (255 * 3) * 3 / 4
local light12 = 255 * 3 / 2 -- (255 * 3) / 2
local light13 = 255         -- (255 * 3) / 3

local function darken_color(rrggbb)
  local r, g, b = rrggbb:match"%#(%x%x)(%x%x)(%x%x)"
  r, g, b = tonumber("0x" .. r), tonumber("0x" .. g), tonumber("0x" .. b)
  local lum = r + g + b
  if lum < light13 then -------------------- in the darkest tertile already
    return rrggbb
  elseif lum < light12 then ---------------- darker than average
    r = bit.tohex(r / 4 * 3):sub(-2)
    g = bit.tohex(g / 4 * 3):sub(-2)
    b = bit.tohex(b / 4 * 3):sub(-2)
  elseif lum < light34 then ---------------- second lightest quartile
    r = bit.tohex(r / 3 * 2):sub(-2)
    g = bit.tohex(g / 3 * 2):sub(-2)
    b = bit.tohex(b / 3 * 2):sub(-2)
  elseif lum < light78 then ---------------- second lightest octile
    r = bit.tohex(r / 3):sub(-2)
    g = bit.tohex(g / 3):sub(-2)
    b = bit.tohex(b / 3):sub(-2)
  else ------------------------------------- lightest octile
    r = bit.tohex(r / 5):sub(-2)
    g = bit.tohex(g / 5):sub(-2)
    b = bit.tohex(b / 5):sub(-2)
  end
  return string.format("#%s%s%s", r, g, b)
end

local function update_cterm_colors()
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
      fn.setline(".", fn.substitute(fn.getline("."), '\\d\\+', function()
        return tostring(vim.fn["colortemplate#colorspace#approx"](color).index)
      end, ""))
    end
  end
end

local function generate_lines()
  local start = fn.line(".") - 1
  fn.search("^}")
  local finish = fn.line(".")
  local lines = vim.api.nvim_buf_get_lines(fn.bufnr(), start, finish, true)
  for i = 1, #lines do
    if lines[i]:find("^%s*color =") then
      lines[i] = lines[i]:gsub('%#%x+', function(m)
        return darken_color(m)
      end)
    end
  end
  table.insert(lines, "")
  return lines
end

--------------------------------------------------------------------------------
-- Generate file with icons for light backgrounds
--------------------------------------------------------------------------------

vim.cmd("noswapfile drop lua/nvim-web-devicons.lua")

print("Generating file with icons for light backgrounds...")

-- move to first line
vim.cmd(":1")

-- first table
if fn.search("^local icons_by_filename") == 0 then
  error("Table not found!")
end
local lines = generate_lines()

-- second table
if fn.search("^local icons_by_file_extension") == 0 then
  error("Table not found!")
end
local lines2 = generate_lines()
table.insert(lines2, "return {")
table.insert(lines2, "  icons_by_filename = icons_by_filename,")
table.insert(lines2, "  icons_by_file_extension = icons_by_file_extension")
table.insert(lines2, "}")

-- write both tables to file
fn.writefile(lines, "lua/nvim-web-devicons-light.lua")
fn.writefile(lines2, "lua/nvim-web-devicons-light.lua", "a")

print("Finished creating new file!")

--------------------------------------------------------------------------------
-- Update cterm colors for dark background
--------------------------------------------------------------------------------

print("Generating cterm colors for dark background...\n")

update_cterm_colors()

vim.cmd("wall!")
print("Finished!")

--------------------------------------------------------------------------------
-- Generate cterm colors for light background
--------------------------------------------------------------------------------

if fn.filereadable("lua/nvim-web-devicons-light.lua") == 0 then
  error("lua/nvim-web-devicons-light.lua not found!")
end

vim.cmd("noswapfile drop lua/nvim-web-devicons-light.lua")

print("Generating cterm colors for light background...\n")

update_cterm_colors()

vim.cmd(":1")
vim.cmd("wall!")
print("Finished!")