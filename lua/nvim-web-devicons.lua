local M = {}

-- When adding new icons, remember to add an entry to the `filetypes` table, if applicable.
local icons, icons_by_filename, icons_by_file_extension, icons_by_operating_system

local default_icon = {
  icon = "",
  color = "#6d8086",
  cterm_color = "66",
  name = "Default",
}

function M.get_icons()
  return icons
end

local global_opts = {
  override = {},
  strict = false,
  default = false,
  color_icons = true,
}

-- Set the current icons tables, depending on the 'background' option.
local function refresh_icons()
  local theme
  if vim.o.background == "light" then
    theme = require "nvim-web-devicons.icons-light"
  else
    theme = require "nvim-web-devicons.icons-default"
  end

  icons_by_filename = theme.icons_by_filename
  icons_by_file_extension = theme.icons_by_file_extension
  icons_by_operating_system = theme.icons_by_operating_system
  icons = vim.tbl_extend("keep", {}, icons_by_filename, icons_by_file_extension, icons_by_operating_system)
  icons = vim.tbl_extend("force", icons, global_opts.override)
  icons[1] = default_icon
end

-- Map of filetypes -> icon names
local filetypes = {
  ["avif"] = "avif",
  ["bzl"] = "bzl",
  ["brewfile"] = "brewfile",
  ["checkhealth"] = "checkhealth",
  ["commit"] = "commit_editmsg",
  ["copying"] = "copying",
  ["gemfile"] = "gemfile$",
  ["lesser"] = "copying.lesser",
  ["vagrantfile"] = "vagrantfile$",
  ["aac"] = "aac",
  ["awk"] = "awk",
  ["bmp"] = "bmp",
  ["c"] = "c",
  ["cfg"] = "cfg",
  ["clojure"] = "clj",
  ["cmake"] = "cmake",
  ["cobol"] = "cobol",
  ["coffee"] = "coffee",
  ["conf"] = "conf",
  ["cp"] = "cp",
  ["cpp"] = "cpp",
  ["cr"] = "cr",
  ["cs"] = "cs",
  ["csh"] = "csh",
  ["cson"] = "cson",
  ["css"] = "css",
  ["csv"] = "csv",
  ["cuda"] = "cu",
  ["d"] = "d",
  ["dart"] = "dart",
  ["desktop"] = "desktop",
  ["diff"] = "diff",
  ["doc"] = "doc",
  ["docx"] = "docx",
  ["dockerfile"] = "dockerfile",
  ["dosbatch"] = "bat",
  ["dosini"] = "ini",
  ["drools"] = "drl",
  ["dropbox"] = "dropbox",
  ["dump"] = "dump",
  ["eex"] = "eex",
  ["ejs"] = "ejs",
  ["elixir"] = "ex",
  ["elm"] = "elm",
  ["epuppet"] = "epp",
  ["erlang"] = "erl",
  ["eruby"] = "erb",
  ["fennel"] = "fnl",
  ["fish"] = "fish",
  ["flac"] = "flac",
  ["forth"] = "fs",
  ["fortran"] = "f90",
  ["fsharp"] = "f#",
  ["fsi"] = "fsi",
  ["fsscript"] = "fsscript",
  ["fsx"] = "fsx",
  ["gd"] = "gd",
  ["gif"] = "gif",
  ["git"] = "git",
  ["gitconfig"] = ".gitconfig",
  ["gitcommit"] = "commit_editmsg",
  ["gitignore"] = ".gitignore",
  ["gitattributes"] = ".gitattributes",
  ["glb"] = "glb",
  ["go"] = "go",
  ["godot"] = "godot",
  ["graphql"] = "graphql",
  ["groovy"] = "groovy",
  ["gql"] = "gql",
  ["gruntfile"] = "gruntfile",
  ["gulpfile"] = "gulpfile",
  ["haml"] = "haml",
  ["haxe"] = "hx",
  ["haskell"] = "hs",
  ["hbs"] = "hbs",
  ["heex"] = "heex",
  ["html"] = "html",
  ["ico"] = "ico",
  ["idlang"] = "pro",
  ["ino"] = "ino",
  ["import"] = "import",
  ["ipynb"] = "ipynb",
  ["java"] = "java",
  ["javascript"] = "js",
  ["javascript.jsx"] = "jsx",
  ["javascriptreact"] = "jsx",
  ["jpeg"] = "jpeg",
  ["jpg"] = "jpg",
  ["json"] = "json",
  ["jsonc"] = "jsonc",
  ["json5"] = "json5",
  ["julia"] = "jl",
  ["kotlin"] = "kt",
  ["leex"] = "leex",
  ["less"] = "less",
  ["liquid"] = "liquid",
  ["lhaskell"] = "lhs",
  ["license"] = "license",
  ["unlicense"] = "unlicense",
  ["log"] = "log",
  ["lock"] = "lock",
  ["lprolog"] = "sig",
  ["lua"] = "lua",
  ["make"] = "makefile",
  ["markdown"] = "markdown",
  ["material"] = "material",
  ["m4a"] = "m4a",
  ["m4v"] = "m4v",
  ["mdx"] = "mdx",
  ["mint"] = "mint",
  ["mkv"] = "mkv",
  ["motoko"] = "mo",
  ["mov"] = "mov",
  ["mp3"] = "mp3",
  ["mp4"] = "mp4",
  ["mustache"] = "mustache",
  ["nim"] = "nim",
  ["nix"] = "nix",
  ["nu"] = "nu",
  ["node"] = "node_modules",
  ["ocaml"] = "ml",
  ["ogg"] = "ogg",
  ["openscad"] = "scad",
  ["opus"] = "opus",
  ["otf"] = "otf",
  ["pck"] = "pck",
  ["pdf"] = "pdf",
  ["perl"] = "pl",
  ["php"] = "php",
  ["plaintex"] = "tex",
  ["png"] = "png",
  ["postscr"] = "ai",
  ["ppt"] = "ppt",
  ["prisma"] = "prisma",
  ["procfile"] = "procfile",
  ["prolog"] = "pro",
  ["ps1"] = "ps1",
  ["psd1"] = "psd1",
  ["psm1"] = "psm1",
  ["psb"] = "psb",
  ["psd"] = "psd",
  ["puppet"] = "pp",
  ["pyc"] = "pyc",
  ["pyd"] = "pyd",
  ["pyo"] = "pyo",
  ["python"] = "py",
  ["query"] = "query",
  ["r"] = "r",
  ["res"] = "rescript",
  ["resi"] = "rescript",
  ["rlib"] = "rlib",
  ["rmd"] = "rmd",
  ["rproj"] = "rproj",
  ["ruby"] = "rb",
  ["rust"] = "rs",
  ["sass"] = "sass",
  ["sbt"] = "sbt",
  ["scala"] = "scala",
  ["scheme"] = "scm",
  ["scss"] = "scss",
  ["sh"] = "sh",
  ["slim"] = "slim",
  ["sln"] = "sln",
  ["sml"] = "sml",
  ["solidity"] = "sol",
  ["sql"] = "sql",
  ["sqlite"] = "sqlite",
  ["sqlite3"] = "sqlite3",
  ["styl"] = "styl",
  ["sublime"] = "sublime",
  ["suo"] = "suo",
  ["svelte"] = "svelte",
  ["svg"] = "svg",
  ["swift"] = "swift",
  ["systemverilog"] = "sv",
  ["tads"] = "t",
  ["tcl"] = "tcl",
  ["templ"] = "templ",
  ["terminal"] = "terminal",
  ["tex"] = "tex",
  ["toml"] = "toml",
  ["tres"] = "tres",
  ["tscn"] = "tscn",
  ["twig"] = "twig",
  ["txt"] = "txt",
  ["typescript"] = "ts",
  ["typescriptreact"] = "tsx",
  ["vala"] = "vala",
  ["verilog"] = "v",
  ["vhdl"] = "vhd",
  ["vim"] = "vim",
  ["vue"] = "vue",
  ["wasm"] = "wasm",
  ["wav"] = "wav",
  ["webm"] = "webm",
  ["webp"] = "webp",
  ["webpack"] = "webpack",
  ["xcplayground"] = "xcplayground",
  ["xls"] = "xls",
  ["xlsx"] = "xlsx",
  ["xml"] = "xml",
  ["yaml"] = "yaml",
  ["zig"] = "zig",
  ["zsh"] = "zsh",
}

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

local nvim_get_hl_by_name = vim.api.nvim_get_hl_by_name
local function highlight_exists(group)
  if not group then
    return
  end

  local ok, hl = pcall(nvim_get_hl_by_name, group, true)
  return ok and not (hl or {})[true]
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

  return string.format("#%06x", nvim_get_hl_by_name(get_highlight_name(icon_data), true).foreground)
end

local function get_highlight_ctermfg(icon_data)
  if not global_opts.color_icons then
    icon_data = default_icon
  end

  return nvim_get_hl_by_name(get_highlight_name(icon_data), false).foreground
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

  local user_icons = opts or {}

  if user_icons.default then
    global_opts.default = true
  end

  if user_icons.strict then
    global_opts.strict = true
  end

  global_opts.color_icons = if_nil(user_icons.color_icons, global_opts.color_icons)

  if user_icons.override and user_icons.override.default_icon then
    default_icon = user_icons.override.default_icon
  end

  local user_filename_icons = user_icons.override_by_filename
  local user_file_ext_icons = user_icons.override_by_extension

  icons =
    vim.tbl_extend("force", icons, user_icons.override or {}, user_filename_icons or {}, user_file_ext_icons or {})
  global_opts.override = vim.tbl_extend(
    "force",
    global_opts.override,
    user_icons.override or {},
    user_filename_icons or {},
    user_file_ext_icons or {}
  )

  if user_filename_icons then
    icons_by_filename = vim.tbl_extend("force", icons_by_filename, user_filename_icons)
  end
  if user_file_ext_icons then
    icons_by_file_extension = vim.tbl_extend("force", icons_by_file_extension, user_file_ext_icons)
  end

  icons[1] = default_icon

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
      icons_by_filename,
      icons_by_file_extension,
      icons_by_operating_system
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

function M.get_icon(name, ext, opts)
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

function M.set_icon(user_icons)
  icons = vim.tbl_extend("force", icons, user_icons or {})
  if not global_opts.color_icons then
    return
  end

  for _, icon_data in pairs(user_icons) do
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
  M.set_up_highlights(true)
end

-- Change icon set on background change
vim.api.nvim_create_autocmd("OptionSet", {
  pattern = "background",
  callback = M.refresh,
})

return M
