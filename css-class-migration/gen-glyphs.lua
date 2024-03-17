--- one off task to generate glyphs-by-*.lua from original icons-default.lua

local inspect = require "inspect"
local glyphnames = require "glyphnames"

local SOURCES = {
  icons_by_filename = "name",
  icons_by_file_extension = "ext",
  icons_by_operating_system = "os",
}

-- multiple or no css class
local OVERRIDES = {
  -- by filename
  [".babelrc"] = "seti-less",
  ["mix.lock"] = "seti-elixir",
  [".prettierrc"] = "custom-prettier",
  -- by extension
  ["elm"] = "seti-elm",
  ["exs"] = "seti-elixir",
  ["coffee"] = "seti-coffee",
  ["json5"] = "seti-json",
  ["eex"] = "seti-elixir",
  ["ex"] = "seti-elixir",
  ["json"] = "seti-json",
  ["nswag"] = "seti-json",
  ["cson"] = "seti-json",
  ["cr"] = "seti-crystal",
  ["jsonc"] = "seti-json",
  ["pp"] = "seti-puppet",
  ["webmanifest"] = "seti-json",
  ["kt"] = "seti-kotlin",
  ["heex"] = "seti-elixir",
  ["leex"] = "seti-elixir",
  ["kts"] = "seti-kotlin",
  ["epp"] = "seti-puppet",
  ["cob"] = "seti-config",
  ["cbl"] = "seti-config",
  ["cobol"] = "seti-config",
  ["cpy"] = "seti-config",
  ["sml"] = "md-lambda",
  ["sig"] = "md-lambda",
  ["mo"] = "md-infinity",
  ["nu"] = "fa-chevron_right",
}

-- map name by codepoint value
local names_by_codepoint = {}
for name, data in pairs(glyphnames) do
  if name and data and data.code then
    local code = tonumber(data.code, 16)
    if not names_by_codepoint[code] then
      names_by_codepoint[code] = {}
    end
    table.insert(names_by_codepoint[code], name)
  end
end

-- generate all "by"
for var, typ in pairs(SOURCES) do
  print(string.format("icons-default.lua[%s] -> icons-by-%s.lua", var, typ))

  -- generate classy glyphs from original
  local glyphs = {}
  for key, icon in pairs(require("icons-default")[var]) do
    local cp = utf8.codepoint(icon.icon)
    local names = names_by_codepoint[cp]

    if OVERRIDES[key] then
      names = { OVERRIDES[key] }
    end

    local class
    if not names then
      local err = string.format("ERR: %-25s no class for %s", key, icon.icon)
      class = err
      io.stderr:write(err .. "\n")
    elseif #names ~= 1 then
      local err = string.format("ERR: %-25s too many classes for %s %s", key, icon.icon, inspect(names))
      class = err
      io.stderr:write(err .. "\n")
    else
      class = names[1]
    end

    glyphs[key] = {
      class = class,
      color = icon.color,
      name = icon.name,
    }
  end

  -- output as lua
  local name = string.format("glyphs-by-%s.lua", typ)
  os.remove(name)
  local file = io.open(name, "a")
  if file then
    io.output(file)
    io.write "return "
    io.write(inspect(glyphs))
    io.close(file)
  end
end
