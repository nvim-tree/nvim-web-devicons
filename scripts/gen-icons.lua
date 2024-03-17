--- generate lua/nvim-web-devicons/icons-default.lua from src/by-*.lua

local inspect = require "inspect"
local glyphnames = require "src/glyphnames"

local OUT = "lua/nvim-web-devicons/icons-default.lua"

-- tables in output mapped to each source file, arraylike to preserve order
local SOURCES = {
  { var = "icons_by_filename", file = "src/by-name" },
  { var = "icons_by_file_extension", file = "src/by-ext" },
  { var = "icons_by_operating_system", file = "src/by-os" },
}

-- icons not yet available
local OVERRIDES = {
  -- by filename
  [".prettierrc"] = "",
}

-- create the file from scratch
os.remove(OUT)
local file, err = io.open(OUT, "a")
if not file then
  io.stderr:write(err .. "\n")
  os.exit(1)
end
io.output(file)
io.write "local M = {}\n\n"

-- generate all bys
for _, src in pairs(SOURCES) do
  print(src.file .. ".lua")

  -- generate populated icons
  local icons = {}
  for key, glyph in pairs(require(src.file)) do
    local icon

    if OVERRIDES[key] then
      icon = OVERRIDES[key]
    else
      local glyphname = glyphnames[glyph.class]
      if not glyphname then
        io.stderr:write(string.format("ERR: %-25s no icon for class %s\n", key, glyph.class))
        os.exit(1)
      else
        icon = glyphname.char
      end
    end

    icons[key] = {
      icon = icon,
      class = glyph.class,
      color = glyph.color,
      name = glyph.name,
    }
  end

  -- output as lua map
  io.write(string.format("M.%s = %s\n\n", src.var, inspect(icons)))
end

io.write "return M\n"
io.close(file)
