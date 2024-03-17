-- TODO #192 remove before merge
-- one off task to check generated against original

local inspect = require "inspect"

local FILES = {
  "default",
  "light",
}

local SOURCES = {
  "icons_by_filename",
  "icons_by_file_extension",
  "icons_by_operating_system",
}

for _, file in pairs(FILES) do
  for _, var in pairs(SOURCES) do
    print(string.format("%s %s", file, var))

    -- original source
    local froms = require("lua/nvim-web-devicons/icons-" .. file .. "-cb0c967")[var]
    local tos = require("lua/nvim-web-devicons/icons-" .. file)[var]

    -- size
    if #froms ~= #tos then
      io.stderr:write(string.format("ERR: %d ~= %d\n", #froms, #tos))
      os.exit(1)
    end

    for k, from in pairs(froms) do
      local to = tos[k]

      if not to then
        print("to missing " .. k)
      elseif from.icon ~= to.icon then
        print(string.format("%-25s '%s' ~= '%s'", k, from.icon, to.icon))
      elseif from.color ~= to.color or from.cterm_color ~= to.cterm_color or from.name ~= to.name then
        io.stderr:write(string.format("%s: %s ~= %s\n", k, inspect(from), inspect(to)))
      end
    end
  end
end
