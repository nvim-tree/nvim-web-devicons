-- Plugin lifepillar/vim-colortemplate must be available on &runtimepath
--
-- The current working directory must be set to the repo root

-- IMPORTANT: the `cterm_color` key must always be below the `color` key of the
--            same icon. Currently they are.

-- This file should be run from the shell with `make colors`

local fn = vim.fn

--- Exit vim
--- @param msg string
--- @param rc number
local function error_exit(msg, rc)
  print(msg .. "\n")
  vim.cmd("cq " .. rc)
end

if not jit then
  error_exit("Neovim must be LuaJIT-enabled to source this script", 1)
end

if fn.filereadable "lua/nvim-web-devicons.lua" == 0 then
  error_exit("lua/nvim-web-devicons.lua not found", 1)
end

local rc, err = pcall(vim.fn["colortemplate#colorspace#approx"], "#000000")
if not rc then
  error_exit(err .. "\nlifepillar/vim-colortemplate not present in &runtimepath '" .. vim.o.runtimepath .. "'", 1)
end

-- Needed in order to have the correct indentation on line insertion
vim.o.autoindent = true

--------------------------------------------------------------------------------
-- Local functions
--------------------------------------------------------------------------------

local light78 = 255 * 7 / 8
local light68 = 255 * 6 / 8
local light58 = 255 * 5 / 8
local light12 = 255 / 2
local light13 = 255 / 3

local function darken_color(rrggbb)
  local r, g, b = rrggbb:match "%#(%x%x)(%x%x)(%x%x)"
  r, g, b = tonumber("0x" .. r), tonumber("0x" .. g), tonumber("0x" .. b)
  -- luminance formula: see https://stackoverflow.com/a/596243
  local lum = 0.299 * r + 0.587 * g + 0.114 * b
  if lum < light13 then -------------------- darkest tertile
    return rrggbb
  elseif lum < light12 then ---------------- second darkest quartile
    r = bit.tohex(r / 4 * 3):sub(-2)
    g = bit.tohex(g / 4 * 3):sub(-2)
    b = bit.tohex(b / 4 * 3):sub(-2)
  elseif lum < light58 then ---------------- lightest octiles: first
    r = bit.tohex(r / 3 * 2):sub(-2)
    g = bit.tohex(g / 3 * 2):sub(-2)
    b = bit.tohex(b / 3 * 2):sub(-2)
  elseif lum < light68 then ---------------- lightest octiles: second
    r = bit.tohex(r / 2):sub(-2)
    g = bit.tohex(g / 2):sub(-2)
    b = bit.tohex(b / 2):sub(-2)
  elseif lum < light78 then ---------------- lightest octiles: third
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
  vim.cmd ":1"
  local last = 0

  while true do
    local cur = fn.search "^\\s*color ="
    if cur < last then
      break
    end
    last = cur
    local color = vim.api.nvim_get_current_line():match "%#......"
    local cterm_color = fn["colortemplate#colorspace#approx"](color).index
    if fn.search "^\\s*cterm_color" == cur + 1 then
      vim.cmd(string.format("s/=.*/= %q,", cterm_color))
    else
      vim.cmd(tostring(cur))
      vim.cmd.normal(string.format("octerm_color = %q,", cterm_color))
    end
  end
end

local function generate_lines()
  local start = fn.line "." - 1
  fn.search "^}"
  local finish = fn.line "."
  local lines = vim.api.nvim_buf_get_lines(fn.bufnr(), start, finish, true)
  for i = 1, #lines do
    if lines[i]:find "^%s*color =" then
      local rrggbb = lines[i]:match '"(#%x%x%x%x%x%x)"'
      if not rrggbb then
        error_exit(string.format("invalid color at line %s: '%s'", i, lines[i]), 1)
      end
      lines[i] = lines[i]:gsub(rrggbb, darken_color)
    end
  end
  table.insert(lines, "")
  return lines
end

--------------------------------------------------------------------------------
-- Generate file with icons for light backgrounds
--------------------------------------------------------------------------------

if fn.filereadable "lua/nvim-web-devicons/icons-default.lua" == 0 then
  error_exit("lua/nvim-web-devicons/icons-default.lua not found", 1)
end

vim.cmd "noswapfile drop lua/nvim-web-devicons/icons-default.lua"

print "Generating file with icons for light backgrounds..."

-- move to first line
vim.cmd ":1"

-- first table
if fn.search("^local icons_by_filename", "c") == 0 then
  error_exit("Table 'icons_by_filename' not found in lua/nvim-web-devicons/icons-default.lua", 1)
end
local lines = generate_lines()

-- second table
if fn.search("^local icons_by_file_extension", "c") == 0 then
  error_exit("Table 'icons_by_file_extension' not found in lua/nvim-web-devicons/icons-default.lua", 1)
end
local lines2 = generate_lines()

-- third table
if fn.search("^local icons_by_operating_system", "c") == 0 then
  error_exit("Table 'icons_by_operating_system' not found in lua/nvim-web-devicons/icons-default.lua", 1)
end
local lines3 = generate_lines()

table.insert(lines3, "return {")
table.insert(lines3, "  icons_by_filename = icons_by_filename,")
table.insert(lines3, "  icons_by_file_extension = icons_by_file_extension,")
table.insert(lines3, "  icons_by_operating_system = icons_by_operating_system,")
table.insert(lines3, "}")

-- write both tables to file
fn.writefile(lines, "lua/nvim-web-devicons/icons-light.lua")
fn.writefile(lines2, "lua/nvim-web-devicons/icons-light.lua", "a")
fn.writefile(lines3, "lua/nvim-web-devicons/icons-light.lua", "a")

print "Finished creating new file!"

--------------------------------------------------------------------------------
-- Update cterm colors for dark background
--------------------------------------------------------------------------------

print "Generating cterm colors for dark background...\n"

update_cterm_colors()

vim.cmd "wall!"
print "Finished!"

--------------------------------------------------------------------------------
-- Generate cterm colors for light background
--------------------------------------------------------------------------------

if fn.filereadable "lua/nvim-web-devicons/icons-light.lua" == 0 then
  error_exit("lua/nvim-web-devicons/icons-light.lua not found", 1)
end

vim.cmd "noswapfile drop lua/nvim-web-devicons/icons-light.lua"

print "Generating cterm colors for light background...\n"

update_cterm_colors()

vim.cmd ":1"
vim.cmd "wall!"
print "Finished!\n"
