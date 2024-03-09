local original = require "nvim-web-devicons._gen.icons"

---@param rrggbb string
---@return string
local function darken_color(rrggbb)
  local light78 = 255 * 7 / 8
  local light68 = 255 * 6 / 8
  local light58 = 255 * 5 / 8
  local light12 = 255 / 2
  local light13 = 255 / 3

  local hex = bit.tohex ---@type fun(n: number): string

  local r, g, b = rrggbb:match "%#(%x%x)(%x%x)(%x%x)"
  r, g, b = tonumber("0x" .. r), tonumber("0x" .. g), tonumber("0x" .. b)
  -- luminance formula: see https://stackoverflow.com/a/596243
  local lum = 0.299 * r + 0.587 * g + 0.114 * b
  if lum < light13 then -------------------- darkest tertile
    return rrggbb
  elseif lum < light12 then ---------------- second darkest quartile
    r = hex(r / 4 * 3):sub(-2)
    g = hex(g / 4 * 3):sub(-2)
    b = hex(b / 4 * 3):sub(-2)
  elseif lum < light58 then ---------------- lightest octiles: first
    r = hex(r / 3 * 2):sub(-2)
    g = hex(g / 3 * 2):sub(-2)
    b = hex(b / 3 * 2):sub(-2)
  elseif lum < light68 then ---------------- lightest octiles: second
    r = hex(r / 2):sub(-2)
    g = hex(g / 2):sub(-2)
    b = hex(b / 2):sub(-2)
  elseif lum < light78 then ---------------- lightest octiles: third
    r = hex(r / 3):sub(-2)
    g = hex(g / 3):sub(-2)
    b = hex(b / 3):sub(-2)
  else ------------------------------------- lightest octile
    r = hex(r / 5):sub(-2)
    g = hex(g / 5):sub(-2)
    b = hex(b / 5):sub(-2)
  end
  return string.format("#%s%s%s", r, g, b)
end

---@param write_to string
---@param light boolean
local function generate(write_to, light)
  local icons = {
    file = {},
    ext = {},
    os = {},
  }

  for name, value in pairs(original) do
    local icon = {
      name = name,
      icon = value.icon,
      color = value.color,
    }
    if light then
      icon.color = darken_color(icon.color)
    end
    icon.cterm_color = tostring(vim.fn["colortemplate#colorspace#approx"](icon.color).index)

    assert(value.file or value.extension or value.os)

    if value.file then
      for _, file in ipairs(value.file) do
        assert(icons.file[file] == nil)
        icons.file[file] = vim.deepcopy(icon)
      end
    end

    if value.extension then
      for _, ext in ipairs(value.extension) do
        assert(icons.ext[ext] == nil)
        icons.ext[ext] = vim.deepcopy(icon)
      end
    end

    if value.os then
      for _, os in ipairs(value.os) do
        assert(icons.os[os] == nil)
        icons.os[os] = vim.deepcopy(icon)
      end
    end
  end

  local generated = "-- Generated from lua/nvim-web-devicons/_gen/icons.lua, do not edit this!"
    .. "\nreturn "
    .. vim.inspect {
      icons_by_filename = icons.file,
      icons_by_file_extension = icons.ext,
      icons_by_operating_system = icons.os,
    }
    .. "\n"
  assert(loadstring(generated))
  local file = assert(io.open(write_to, "w"))
  file:write(generated)
  file:close()
end

generate("lua/nvim-web-devicons/icons-default.lua", false)
generate("lua/nvim-web-devicons/icons-light.lua", true)
