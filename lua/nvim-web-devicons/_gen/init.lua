local color = require "nvim-web-devicons._gen.color"
local nerdfonts = require "nvim-web-devicons._gen.nerdfonts"
local original = require "nvim-web-devicons._gen.icons"

---@param filename string
---@param obj any
local function write(filename, obj)
  local generated = "-- Generated from lua/nvim-web-devicons/_gen/icons.lua, do not edit this!"
    .. "\nreturn "
    .. vim.inspect(obj)
    .. "\n"
  assert(loadstring(generated))
  local file = assert(io.open(filename, "w"))
  file:write(generated)
  file:close()
end

---@param filename string
---@param light boolean
local function generate_icons(filename, light)
  local icons = {
    file = {},
    ext = {},
    os = {},
  }

  for name, value in pairs(original) do
    local icon = {
      name = name,
      -- some icons are not nerd-fonts
      icon = nerdfonts.get_icon_by_class(value.icon) or value.icon,
      color = value.color,
    }
    if light then
      icon.color = color.darken(icon.color)
    end
    icon.cterm_color = tostring(vim.fn["colortemplate#colorspace#approx"](icon.color).index)

    assert(icon.icon:len() <= 4)
    assert(value.file or value.extension or value.os)

    if value.file then
      for _, file in ipairs(value.file) do
        assert(icons.file[file] == nil)
        icons.file[file] = vim.deepcopy(icon)
      end
    end

    if value.extension then
      for _, ext in ipairs(value.extension) do
        assert(icons.ext[ext] == nil)
        icons.ext[ext] = vim.deepcopy(icon)
      end
    end

    if value.os then
      for _, os in ipairs(value.os) do
        assert(icons.os[os] == nil)
        icons.os[os] = vim.deepcopy(icon)
      end
    end
  end

  write(filename, {
    icons_by_filename = icons.file,
    icons_by_file_extension = icons.ext,
    icons_by_operating_system = icons.os,
  })
end

local function generate_filetypes(filename)
  local filetypes = {}

  for _, value in pairs(original) do
    if value.filetype then
      for _, filetype in ipairs(value.filetype) do
        assert(filetypes[filetype] == nil)
        filetypes[filetype] = assert(value.file and value.file[1] or value.extension and value.extension[1])
      end
    end
  end

  write(filename, filetypes)
end

generate_icons("lua/nvim-web-devicons/icons-default.lua", false)
generate_icons("lua/nvim-web-devicons/icons-light.lua", true)
generate_filetypes "lua/nvim-web-devicons/filetypes.lua"
