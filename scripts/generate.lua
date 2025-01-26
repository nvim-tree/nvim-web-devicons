-- Plugin lifepillar/vim-colortemplate must be available on &runtimepath
--
-- The current working directory must be set to the repo root
--
-- This file should be run from the shell with `make generate`

vim.opt.wrapscan = false -- don't wrap after reaching end of file

local fn = vim.fn

--- Exit vim
--- @param msg string
--- @param rc number
local function error_exit(msg, rc)
  print(msg .. "\n")
  vim.cmd("cq " .. rc)
end

_G.ICON_FILES = {
  "icons_by_desktop_environment.lua",
  "icons_by_file_extension.lua",
  "icons_by_filename.lua",
  "icons_by_operating_system.lua",
  "icons_by_window_manager.lua",
}

for _, file in ipairs(_G.ICON_FILES) do
  local f = "lua/nvim-web-devicons/default/" .. file
  if fn.filereadable(f) == 0 then
    error_exit(f, 1)
  end
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
  return string.format("#%s%s%s", r, g, b):upper()
end

local function iterate_colors(proc)
  -- move to first line
  vim.cmd ":1"
  local cursor = fn.search "\\scolor ="
  -- fn.search will return 0 when no more matches are found with falsy `wrapscan`
  while cursor ~= 0 do
    local rrggbb = vim.api.nvim_get_current_line():match '"(#%x%x%x%x%x%x)"'
    proc(rrggbb)
    vim.cmd "normal! $"
    cursor = fn.search "\\scolor ="
  end
end

local function generate_cterm(rrggbb)
  local cterm_color = fn["colortemplate#colorspace#approx"](rrggbb).index
  vim.cmd(string.format('s/cterm_color = "[0-9]*"/cterm_color = %q', cterm_color))
end

local function generate_for_light_bg(rrggbb)
  local darkened_rrggbb = darken_color(rrggbb)
  vim.cmd(string.format("s/%q/%q/", rrggbb, darkened_rrggbb))
  generate_cterm(darkened_rrggbb)
end

--------------------------------------------------------------------------------
-- Update cterm_color for dark background
--------------------------------------------------------------------------------
for _, file in ipairs(_G.ICON_FILES) do
  vim.cmd(string.format("noswapfile drop lua/nvim-web-devicons/default/%s", file))
  io.write(string.format("Generating cterm colors for dark background: %s...", file))
  iterate_colors(generate_cterm)
  vim.cmd "silent! wall!"
  io.write " OK\n"
end

--------------------------------------------------------------------------------
-- Update color and cterm_color for light backgrounds
--------------------------------------------------------------------------------
for _, file in ipairs(_G.ICON_FILES) do
  vim.cmd("noswapfile drop lua/nvim-web-devicons/light/" .. file)
  io.write("Generating colors for light background: " .. file .. "...")
  iterate_colors(generate_for_light_bg)
  vim.cmd(
    string.format(
      "1s/.*/& -- this file is generated from lua\\/nvim-web-devicons\\/default\\/%s, please do not edit",
      file
    )
  )
  vim.cmd "silent! wall!"
  io.write " OK\n"
end
