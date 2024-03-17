--- generate icons-by-*.lua from glyphs-by-*.lua

local inspect = require "inspect"
local glyphnames = require "glyphnames"

local SOURCES = {
  "name",
  "ext",
  "os",
}

-- generate all "by"
for _, typ in pairs(SOURCES) do
  print(string.format("glyphs-by-%s.lua -> icons-by-%s.lua", typ, typ))

  -- generate populated icons
  local icons = {}
  for key, glyph in pairs(require("glyphs-by-" .. typ)) do
    local icon

    local glyphname = glyphnames[glyph.class]
    if not glyphname then
      local err = string.format("ERR: %-25s no icon for class %s", key, glyph.class)
      icon = err
      io.stderr:write(err .. "\n")
    else
      icon = glyphname.char
    end

    icons[key] = {
      icon = icon,
      class = glyph.class,
      color = glyph.color,
      name = glyph.name,
    }
  end

  -- output as lua
  local name = string.format("icons-by-%s.lua", typ)
  os.remove(name)
  local file = io.open(name, "a")
  if file then
    io.output(file)
    io.write "return "
    io.write(inspect(icons))
    io.close(file)
  end
end
