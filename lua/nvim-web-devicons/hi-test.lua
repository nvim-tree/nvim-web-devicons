---Run a test similar to :so $VIMRUNTIME/syntax/hitest.vim
---Display all icons and their group highlighted, followed by the concrete definition

local namespace_hi_test_id = vim.api.nvim_create_namespace "NvimWebDeviconsHiTest"

---@class (exact) IconDisplay for :NvimTreeHiTest
---@field tag string filename, os or extension
---@field name string name without prefix
---@field icon string icon itself
---@field group string|nil :hi group name
---@field def string|nil :hi concrete definition
---@field private __index IconDisplay? TODO migrate to classic
local IconDisplay = {}

---@param o IconDisplay
---@return IconDisplay|nil
function IconDisplay:new(o)
  if type(o.tag) ~= "string" or type(o.name) ~= "string" or type(o.icon) ~= "string" then
    return nil
  end

  setmetatable(o, self)
  self.__index = self

  o.group = "DevIcon" .. o.name
  o.tag = o.tag or ""

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
---@param max_group_len number longest group length
---@param l number line number
---@return number l incremented
function IconDisplay:render(bufnr, max_tag_len, max_group_len, l)
  local fmt = string.format("%%s  %%-%d.%ds  %%-%d.%ds  %%s", max_tag_len, max_tag_len, max_group_len, max_group_len)
  local text = string.format(fmt, self.icon, self.tag, self.group, self.def)

  vim.api.nvim_buf_set_lines(bufnr, l, -1, true, { text })
  if vim.fn.has "nvim-0.11" == 1 and vim.hl and vim.hl.range then
    vim.hl.range(bufnr, namespace_hi_test_id, self.group, { l, 0 }, { l, -1 }, {})
  else
    vim.api.nvim_buf_add_highlight(bufnr, -1, self.group, l, 0, -1) ---@diagnostic disable-line: deprecated
  end

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
  local max_tag_len = 0
  local max_group_len = 0

  local displays = {}
  ---@cast displays IconDisplay[]

  -- build all icon displays
  for tag, icon in pairs(icons) do
    local display = IconDisplay:new { tag = tag, name = icon.name, icon = icon.icon }
    if display then
      table.insert(displays, display)
      max_tag_len = math.max(max_tag_len, #display.tag)
      max_group_len = math.max(max_group_len, #display.group)
    end
  end

  -- sort by name
  table.sort(displays, function(a, b)
    return a.name < b.name
  end)

  l = render_line(bufnr, l, header)
  l = render_line(bufnr, l, header:gsub(".", "-"))
  for _, display in ipairs(displays) do
    l = display:render(bufnr, max_tag_len, max_group_len, l)
  end
  l = render_line(bufnr, l, "")

  return l
end

---Create a buffer similar to :ru syntax/hitest.vim displaying each set icons
---Icon, name, <tag>, concrete highlight definition
---tag and header follows param
---@param default_icon table no tag "Default"
---@param global_override table[] all global overrides "Overrides"
---@param icons_by_filename table[] filename "By File Name"
---@param icons_by_file_extension table[] extension "By File Extension"
---@param icons_by_operating_system table[] os "By Operating System"
---@param icons_by_desktop_environment table[] os "By Desktop Environment"
---@param icons_by_window_manager table[] os "By Window Manager"
return function(
  default_icon,
  global_override,
  icons_by_filename,
  icons_by_file_extension,
  icons_by_operating_system,
  icons_by_desktop_environment,
  icons_by_window_manager
)
  -- create a buffer
  local bufnr = vim.api.nvim_create_buf(false, true)

  -- render and highlight each section
  local l = 0
  l = render_icons(bufnr, l, { [""] = default_icon }, "Default")
  if global_override and next(global_override) then
    l = render_icons(bufnr, l, global_override, "Overrides")
  end
  l = render_icons(bufnr, l, icons_by_filename, "By File Name")
  l = render_icons(bufnr, l, icons_by_file_extension, "By File Extension")
  l = render_icons(bufnr, l, icons_by_operating_system, "By Operating System")
  l = render_icons(bufnr, l, icons_by_desktop_environment, "By Desktop Environment")
  render_icons(bufnr, l, icons_by_window_manager, "By Window Manager")

  -- finalise and focus the buffer
  if vim.fn.has "nvim-0.10" == 1 then
    vim.api.nvim_set_option_value("modifiable", false, { buf = bufnr })
  else
    vim.api.nvim_buf_set_option(bufnr, "modifiable", false) ---@diagnostic disable-line: deprecated
  end
  vim.cmd.buffer(bufnr)
end
