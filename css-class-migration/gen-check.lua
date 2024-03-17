--- one off task to check icons-by-*.lua from original icons-default.lua

local inspect = require "inspect"

local SOURCES = {
  icons_by_filename = "name",
  icons_by_file_extension = "ext",
  icons_by_operating_system = "os",
}

local fail = false

-- process all "by"
for var, typ in pairs(SOURCES) do
  print(string.format("icons-default.lua[%s] <-> icons-by-%s.lua", var, typ))

  -- original source
  local froms = require("icons-default")[var]
  local tos = require("icons-by-" .. typ)

  -- size
  if #froms ~= #tos then
    io.stderr:write(string.format("ERR: %d ~= %d\n", #froms, #tos))
    os.exit(1)
  end

  for k, from in pairs(froms) do
    local to = tos[k]

    if not to then
      fail = true
      io.stderr:write(string.format("ERR: icons-by-%s.lua missing %s\n", typ, k))
    elseif from.icon ~= to.icon then
      fail = true
      io.stderr:write(string.format("ERR: %-25s %s ~= %s\n", k, from.icon, to.icon))
    elseif from.color ~= to.color or from.name ~= to.name then
      io.stderr:write(string.format("ERR: %s ~= %s\n", inspect(from), inspect(to)))
    end
  end
end

if fail then
  os.exit(1)
end
