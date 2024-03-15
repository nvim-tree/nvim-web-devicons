---@param path string
---@return { [string]: string }
local function load_json(path)
  local file = assert(io.open(path, "r"))
  local json = file:read "*a"
  file:close()
  local data = vim.json.decode(json)
  local icons = {}
  for name, t in pairs(data) do
    if name ~= "METADATA" then
      icons[name] = t.char
    end
  end
  return icons
end

local icons = load_json "nerd-fonts/glyphnames.json"

local M = {}

---@param class string
---@return string?
function M.get_icon_by_class(class)
  return icons[class]
end

return M
