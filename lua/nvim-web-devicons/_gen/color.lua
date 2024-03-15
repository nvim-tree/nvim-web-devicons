local M = {}

---@param rrggbb string
---@return string
function M.darken(rrggbb)
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

return M
