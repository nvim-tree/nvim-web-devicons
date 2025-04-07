local M = {}

---@alias iconName string Name of the icon

---@class Icon
---@field icon string Nerd-font glyph
---@field color string Hex color code
---@field cterm_color string cterm color code
---@field name iconName

-- NOTE: When adding new icons, remember to add an entry to the `filetypes` table, if applicable.
local icons, icons_by_filename, icons_by_file_extension, icons_by_operating_system
local icons_by_desktop_environment, icons_by_window_manager
local user_icons

local filetypes = require "nvim-web-devicons.filetypes"

---@type Icon
local default_icon = {
  icon = "",
  color = "#6d8086",
  cterm_color = "66",
  name = "Default",
}

function M.get_icons()
  return icons
end

function M.get_icons_by_filename()
  return icons_by_filename
end

function M.get_icons_by_extension()
  return icons_by_file_extension
end

function M.get_icons_by_operating_system()
  return icons_by_operating_system
end

function M.get_icons_by_desktop_environment()
  return icons_by_desktop_environment
end

function M.get_icons_by_window_manager()
  return icons_by_window_manager
end

local global_opts = {
  override = {},
  strict = false,
  default = false,
  color_icons = true,
  variant = nil,
}

---Change all keys in a table to lowercase
---Remove entry when lowercase entry already exists
---@param t table
local function lowercase_keys(t)
  if not t then
    return
  end

  for k, v in pairs(t) do
    if type(k) == "string" then
      local lower_k = k:lower()
      if lower_k ~= k then
        if not t[lower_k] then
          t[lower_k] = v
        end
        t[k] = nil
      end
    end
  end
end

-- Set the current icons tables, depending on variant option, then &background
local function refresh_icons()
  local theme
  if global_opts.variant == "light" then
    theme = require "nvim-web-devicons.icons-light"
  elseif global_opts.variant == "dark" then
    theme = require "nvim-web-devicons.icons-default"
  else
    if vim.o.background == "light" then
      theme = require "nvim-web-devicons.icons-light"
    else
      theme = require "nvim-web-devicons.icons-default"
    end
  end

  icons_by_filename = theme.icons_by_filename
  icons_by_file_extension = theme.icons_by_file_extension
  icons_by_operating_system = theme.icons_by_operating_system
  icons_by_desktop_environment = theme.icons_by_desktop_environment
  icons_by_window_manager = theme.icons_by_window_manager

  -- filename matches are case insensitive
  lowercase_keys(icons_by_filename)

  icons = vim.tbl_extend(
    "keep",
    {},
    icons_by_filename,
    icons_by_file_extension,
    icons_by_operating_system,
    icons_by_desktop_environment,
    icons_by_window_manager
  )
  icons = vim.tbl_extend("force", icons, global_opts.override)
  icons[1] = default_icon
end

local function get_highlight_name(data)
  if not global_opts.color_icons then
    data = default_icon
  end

  return data.name and "DevIcon" .. data.name
end

local nvim_set_hl = vim.api.nvim_set_hl
local function set_up_highlight(icon_data)
  if not global_opts.color_icons then
    icon_data = default_icon
  end

  local hl_group = get_highlight_name(icon_data)
  if hl_group and (icon_data.color or icon_data.cterm_color) then
    nvim_set_hl(0, get_highlight_name(icon_data), {
      fg = icon_data.color,
      ctermfg = tonumber(icon_data.cterm_color),
    })
  end
end

local function highlight_exists(group)
  if not group then
    return
  end

  if vim.fn.has "nvim-0.9" == 1 then
    local hl = vim.api.nvim_get_hl(0, { name = group, link = false })
    return not vim.tbl_isempty(hl)
  else
    local ok, hl = pcall(vim.api.nvim_get_hl_by_name, group, true) ---@diagnostic disable-line: deprecated
    return ok and not (hl or {})[true]
  end
end

function M.set_up_highlights(allow_override)
  if not global_opts.color_icons then
    set_up_highlight(default_icon)
    return
  end

  for _, icon_data in pairs(icons) do
    local has_color = icon_data.color or icon_data.cterm_color
    local name_valid = icon_data.name
    local defined_before = highlight_exists(get_highlight_name(icon_data))
    if has_color and name_valid and (allow_override or not defined_before) then
      set_up_highlight(icon_data)
    end
  end
end

local function get_highlight_foreground(icon_data)
  if not global_opts.color_icons then
    icon_data = default_icon
  end

  local higroup = get_highlight_name(icon_data)

  local fg
  if vim.fn.has "nvim-0.9" == 1 then
    fg = vim.api.nvim_get_hl(0, { name = higroup, link = false }).fg
  else
    fg = vim.api.nvim_get_hl_by_name(higroup, true).foreground ---@diagnostic disable-line: deprecated
  end

  return string.format("#%06x", fg)
end

local function get_highlight_ctermfg(icon_data)
  if not global_opts.color_icons then
    icon_data = default_icon
  end

  local higroup = get_highlight_name(icon_data)

  if vim.fn.has "nvim-0.9" == 1 then
    --- @type string
    --- @diagnostic disable-next-line: undefined-field  vim.api.keyset.hl_info specifies cterm, not ctermfg
    return vim.api.nvim_get_hl(0, { name = higroup, link = false }).ctermfg
  else
    return vim.api.nvim_get_hl_by_name(higroup, false).foreground ---@diagnostic disable-line: deprecated
  end
end

local function apply_user_icons()
  if type(user_icons) ~= "table" then
    return
  end

  if user_icons.override and user_icons.override.default_icon then
    default_icon = user_icons.override.default_icon
  end

  local user_filename_icons = user_icons.override_by_filename
  local user_file_ext_icons = user_icons.override_by_extension
  local user_operating_system_icons = user_icons.override_by_operating_system
  local user_desktop_environment_icons = user_icons.override_by_desktop_environment
  local user_window_manager_icons = user_icons.override_by_window_manager

  -- filename matches are case insensitive
  lowercase_keys(icons_by_filename)
  lowercase_keys(user_icons.override)
  lowercase_keys(user_icons.override_by_filename)

  icons = vim.tbl_extend(
    "force",
    icons,
    user_icons.override or {},
    user_filename_icons or {},
    user_file_ext_icons or {},
    user_operating_system_icons or {},
    user_desktop_environment_icons or {},
    user_window_manager_icons or {}
  )
  global_opts.override = vim.tbl_extend(
    "force",
    global_opts.override,
    user_icons.override or {},
    user_filename_icons or {},
    user_file_ext_icons or {},
    user_operating_system_icons or {},
    user_desktop_environment_icons or {},
    user_window_manager_icons or {}
  )

  if user_filename_icons then
    icons_by_filename = vim.tbl_extend("force", icons_by_filename, user_filename_icons)
  end
  if user_file_ext_icons then
    icons_by_file_extension = vim.tbl_extend("force", icons_by_file_extension, user_file_ext_icons)
  end
  if user_operating_system_icons then
    icons_by_operating_system = vim.tbl_extend("force", icons_by_operating_system, user_operating_system_icons)
  end
  if user_desktop_environment_icons then
    icons_by_desktop_environment = vim.tbl_extend("force", icons_by_desktop_environment, user_desktop_environment_icons)
  end
  if user_window_manager_icons then
    icons_by_window_manager = vim.tbl_extend("force", icons_by_window_manager, user_window_manager_icons)
  end

  icons[1] = default_icon
end

local loaded = false

function M.has_loaded()
  return loaded
end

local if_nil = vim.F.if_nil
function M.setup(opts)
  if loaded then
    return
  end

  loaded = true

  user_icons = opts or {}

  if user_icons.default then
    global_opts.default = true
  end

  if user_icons.strict then
    global_opts.strict = true
  end

  global_opts.color_icons = if_nil(user_icons.color_icons, global_opts.color_icons)

  if user_icons.variant == "light" or user_icons.variant == "dark" then
    global_opts.variant = user_icons.variant

    -- Reload the icons after setting variant option
    refresh_icons()
  end

  apply_user_icons()

  M.set_up_highlights()

  vim.api.nvim_create_autocmd("ColorScheme", {
    desc = "Re-apply icon colors after changing colorschemes",
    group = vim.api.nvim_create_augroup("NvimWebDevicons", { clear = true }),
    callback = M.set_up_highlights,
  })

  -- highlight test command
  vim.api.nvim_create_user_command("NvimWebDeviconsHiTest", function()
    require "nvim-web-devicons.hi-test"(
      default_icon,
      global_opts.override,
      icons_by_filename,
      icons_by_file_extension,
      icons_by_operating_system,
      icons_by_desktop_environment,
      icons_by_window_manager
    )
  end, {
    desc = "nvim-web-devicons: highlight test",
  })
end

function M.get_default_icon()
  return default_icon
end

-- recursively iterate over each segment separated by '.' to parse extension with multiple dots in filename
local function iterate_multi_dotted_extension(name, icon_table)
  if name == nil then
    return nil
  end

  local compound_ext = name:match "%.(.*)"
  local icon = icon_table[compound_ext]
  if icon then
    return icon
  end

  return iterate_multi_dotted_extension(compound_ext, icon_table)
end

local function get_icon_by_extension(name, ext, opts)
  local is_strict = if_nil(opts and opts.strict, global_opts.strict)
  local icon_table = is_strict and icons_by_file_extension or icons

  if ext ~= nil then
    return icon_table[ext]
  end

  return iterate_multi_dotted_extension(name, icon_table)
end

local function get_icon_data(name, ext, opts)
  if type(name) == "string" then
    name = name:lower()
  end

  if not loaded then
    M.setup()
  end

  local has_default = if_nil(opts and opts.default, global_opts.default)
  local is_strict = if_nil(opts and opts.strict, global_opts.strict)
  local icon_data
  if is_strict then
    icon_data = icons_by_filename[name] or get_icon_by_extension(name, ext, opts) or (has_default and default_icon)
  else
    icon_data = icons[name] or get_icon_by_extension(name, ext, opts) or (has_default and default_icon)
  end

  return icon_data
end

function M.get_icon(name, ext, opts)
  local icon_data = get_icon_data(name, ext, opts)

  if icon_data then
    return icon_data.icon, get_highlight_name(icon_data)
  end
end

function M.get_icon_name_by_filetype(ft)
  return filetypes[ft]
end

function M.get_icon_by_filetype(ft, opts)
  local name = M.get_icon_name_by_filetype(ft)
  opts = opts or {}
  opts.strict = false
  return M.get_icon(name or "", nil, opts)
end

function M.get_icon_colors(name, ext, opts)
  local icon_data = get_icon_data(name, ext, opts)

  if icon_data then
    local color = icon_data.color
    local cterm_color = icon_data.cterm_color
    if icon_data.name and highlight_exists(get_highlight_name(icon_data)) then
      color = get_highlight_foreground(icon_data) or color
      cterm_color = get_highlight_ctermfg(icon_data) or cterm_color
    end
    return icon_data.icon, color, cterm_color
  end
end

function M.get_icon_colors_by_filetype(ft, opts)
  local name = M.get_icon_name_by_filetype(ft)
  return M.get_icon_colors(name or "", nil, opts)
end

function M.get_icon_color(name, ext, opts)
  local data = { M.get_icon_colors(name, ext, opts) }
  return data[1], data[2]
end

function M.get_icon_color_by_filetype(ft, opts)
  local name = M.get_icon_name_by_filetype(ft)
  opts = opts or {}
  opts.strict = false
  return M.get_icon_color(name or "", nil, opts)
end

function M.get_icon_cterm_color(name, ext, opts)
  local data = { M.get_icon_colors(name, ext, opts) }
  return data[1], data[3]
end

function M.get_icon_cterm_color_by_filetype(ft, opts)
  local name = M.get_icon_name_by_filetype(ft)
  return M.get_icon_cterm_color(name or "", nil, opts)
end

function M.set_icon(user_icons_opts)
  icons = vim.tbl_extend("force", icons, user_icons_opts or {})
  global_opts.override = vim.tbl_extend("force", global_opts.override, user_icons_opts or {})
  if not global_opts.color_icons then
    return
  end

  for _, icon_data in pairs(user_icons_opts) do
    set_up_highlight(icon_data)
  end
end

function M.set_icon_by_filetype(user_filetypes)
  filetypes = vim.tbl_extend("force", filetypes, user_filetypes or {})
end

function M.set_default_icon(icon, color, cterm_color)
  default_icon.icon = icon
  default_icon.color = color
  default_icon.cterm_color = cterm_color
  set_up_highlight(default_icon)
end

-- Load the icons already, the loaded tables depend on the 'background' setting.
refresh_icons()

function M.refresh()
  refresh_icons()
  apply_user_icons()
  M.set_up_highlights(true)
end

-- Change icon set on background change
vim.api.nvim_create_autocmd("OptionSet", {
  pattern = "background",
  callback = M.refresh,
})

return M
