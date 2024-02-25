---Run a test similar to :so $VIMRUNTIME/syntax/hitest.vim
---Display all icons and their group highlighted, followed by the concrete definition
--
---@class IconDisplay for :NvimTreeHiTest
---@field tag any filename, os or extension, only strings accepted
---@field name string name without prefix
---@field icon string icon itself
---@field group string|nil :hi group name
---@field def string|nil :hi concrete definition
local IconDisplay = {}

---@param o IconDisplay
---@return IconDisplay
function IconDisplay:new(o)
  setmetatable(o, self)
  self.__index = self

  o.group = "DevIcon" .. o.name
  o.tag = type(o.tag) == "string" and o.tag or ""

  -- concrete definition
  local ok, res = pcall(vim.api.nvim_cmd, { cmd = "highlight", args = { o.group } }, { output = true })
  if ok and type(res) == "string" then
    o.def = res:gsub(".*xxx *", "")
  else
    o.def = ""
  end

  return o
end

---Write the line with highlighting
---@param bufnr number buffer number
---@param max_tag_len number longest tag length
---@param max_name_len number longest name length
---@param l number line number
---@return number l incremented
function IconDisplay:render(bufnr, max_tag_len, max_name_len, l)
  local fmt = string.format("%%s  %%-%d.%ds  %%-%d.%ds  %%s", max_name_len, max_name_len, max_tag_len, max_tag_len)
  local text = string.format(fmt, self.icon, self.name, self.tag, self.def)

  vim.api.nvim_buf_set_lines(bufnr, l, -1, true, { text })
  vim.api.nvim_buf_add_highlight(bufnr, -1, self.group, l, 0, -1)

  return l + 1
end

---Render a single line of text
---@param bufnr number
---@param l number line number
---@return number l incremented
local function render_line(bufnr, l, text)
  vim.api.nvim_buf_set_lines(bufnr, l, -1, true, { text })
  return l + 1
end

---Render all icons sorted by tag
---@param bufnr number
---@param l number line number
---@param icons table
---@param header string
---@return number l incremented
local function render_icons(bufnr, l, icons, header)
  local displays = {}
  local max_tag_len = 0
  local max_name_len = 0

  -- build all icon displays
  for tag, icon in pairs(icons) do
    local display = IconDisplay:new { tag = tag, name = icon.name, icon = icon.icon }
    table.insert(displays, display)
    max_tag_len = math.max(max_tag_len, #display.tag)
    max_name_len = math.max(max_name_len, #display.name)
  end

  -- sort by name
  table.sort(displays, function(a, b)
    return a.name < b.name
  end)

  l = render_line(bufnr, l, header)
  l = render_line(bufnr, l, header:gsub(".", "-"))
  for _, display in ipairs(displays) do
    l = display:render(bufnr, max_tag_len, max_name_len, l)
  end
  l = render_line(bufnr, l, "")

  return l
end

---Create a buffer similar to :ru syntax/hitest.vim displaying each set icons
---Icon, name, <tag>, concrete highlight definition
---tag and header follows param
---@param default_icon table no tag "Default"
---@param icons_by_filename table[] filename "By File Name"
---@param icons_by_file_extension table[] extension "By File Extension"
---@param icons_by_operating_system table[] os "By Operating System"
return function(default_icon, icons_by_filename, icons_by_file_extension, icons_by_operating_system)
  -- create a buffer
  local bufnr = vim.api.nvim_create_buf(false, true)

  -- render and highlight each section
  local l = 0
  l = render_icons(bufnr, l, { default_icon }, "Default")
  l = render_icons(bufnr, l, icons_by_filename, "By File Name")
  l = render_icons(bufnr, l, icons_by_file_extension, "By File Extension")
  render_icons(bufnr, l, icons_by_operating_system, "By Operating System")

  -- finalise and focus the buffer
  vim.api.nvim_buf_set_option(bufnr, "modifiable", false)
  vim.cmd.buffer(bufnr)
end
