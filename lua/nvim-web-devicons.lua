local M = {}

-- When adding new icons, remember to add an entry to the `filetypes` table, if applicable.
local icons, icons_by_filename, icons_by_file_extension, icons_by_operating_system

function M.get_icons()
  return icons
end

local global_opts = {
  override = {},
  strict = false,
  default = false,
  color_icons = true,
}

-- 8-bit, RGB hex
-- from https://gist.github.com/chrisdiana/c71f224626b5b9516bdb
local cterm_to_rgb_table = {
  -- Primary 3-bit (8 colors). Unique representation!
  [00] = "#000000",
  [01] = "#800000",
  [02] = "#008000",
  [03] = "#808000",
  [04] = "#000080",
  [05] = "#800080",
  [06] = "#008080",
  [07] = "#c0c0c0",

  -- Equivalent "bright" versions of original 8 colors.
  [08] = "#808080",
  [09] = "#ff0000",
  [10] = "#00ff00",
  [11] = "#ffff00",
  [12] = "#0000ff",
  [13] = "#ff00ff",
  [14] = "#00ffff",
  [15] = "#ffffff",

  -- Strictly ascending.
  [16] = "#000000",
  [17] = "#00005f",
  [18] = "#000087",
  [19] = "#0000af",
  [20] = "#0000d7",
  [21] = "#0000ff",
  [22] = "#005f00",
  [23] = "#005f5f",
  [24] = "#005f87",
  [25] = "#005faf",
  [26] = "#005fd7",
  [27] = "#005fff",
  [28] = "#008700",
  [29] = "#00875f",
  [30] = "#008787",
  [31] = "#0087af",
  [32] = "#0087d7",
  [33] = "#0087ff",
  [34] = "#00af00",
  [35] = "#00af5f",
  [36] = "#00af87",
  [37] = "#00afaf",
  [38] = "#00afd7",
  [39] = "#00afff",
  [40] = "#00d700",
  [41] = "#00d75f",
  [42] = "#00d787",
  [43] = "#00d7af",
  [44] = "#00d7d7",
  [45] = "#00d7ff",
  [46] = "#00ff00",
  [47] = "#00ff5f",
  [48] = "#00ff87",
  [49] = "#00ffaf",
  [50] = "#00ffd7",
  [51] = "#00ffff",
  [52] = "#5f0000",
  [53] = "#5f005f",
  [54] = "#5f0087",
  [55] = "#5f00af",
  [56] = "#5f00d7",
  [57] = "#5f00ff",
  [58] = "#5f5f00",
  [59] = "#5f5f5f",
  [60] = "#5f5f87",
  [61] = "#5f5faf",
  [62] = "#5f5fd7",
  [63] = "#5f5fff",
  [64] = "#5f8700",
  [65] = "#5f875f",
  [66] = "#5f8787",
  [67] = "#5f87af",
  [68] = "#5f87d7",
  [69] = "#5f87ff",
  [70] = "#5faf00",
  [71] = "#5faf5f",
  [72] = "#5faf87",
  [73] = "#5fafaf",
  [74] = "#5fafd7",
  [75] = "#5fafff",
  [76] = "#5fd700",
  [77] = "#5fd75f",
  [78] = "#5fd787",
  [79] = "#5fd7af",
  [80] = "#5fd7d7",
  [81] = "#5fd7ff",
  [82] = "#5fff00",
  [83] = "#5fff5f",
  [84] = "#5fff87",
  [85] = "#5fffaf",
  [86] = "#5fffd7",
  [87] = "#5fffff",
  [88] = "#870000",
  [89] = "#87005f",
  [90] = "#870087",
  [91] = "#8700af",
  [92] = "#8700d7",
  [93] = "#8700ff",
  [94] = "#875f00",
  [95] = "#875f5f",
  [96] = "#875f87",
  [97] = "#875faf",
  [98] = "#875fd7",
  [99] = "#875fff",
  [100] = "#878700",
  [101] = "#87875f",
  [102] = "#878787",
  [103] = "#8787af",
  [104] = "#8787d7",
  [105] = "#8787ff",
  [106] = "#87af00",
  [107] = "#87af5f",
  [108] = "#87af87",
  [109] = "#87afaf",
  [110] = "#87afd7",
  [111] = "#87afff",
  [112] = "#87d700",
  [113] = "#87d75f",
  [114] = "#87d787",
  [115] = "#87d7af",
  [116] = "#87d7d7",
  [117] = "#87d7ff",
  [118] = "#87ff00",
  [119] = "#87ff5f",
  [120] = "#87ff87",
  [121] = "#87ffaf",
  [122] = "#87ffd7",
  [123] = "#87ffff",
  [124] = "#af0000",
  [125] = "#af005f",
  [126] = "#af0087",
  [127] = "#af00af",
  [128] = "#af00d7",
  [129] = "#af00ff",
  [130] = "#af5f00",
  [131] = "#af5f5f",
  [132] = "#af5f87",
  [133] = "#af5faf",
  [134] = "#af5fd7",
  [135] = "#af5fff",
  [136] = "#af8700",
  [137] = "#af875f",
  [138] = "#af8787",
  [139] = "#af87af",
  [140] = "#af87d7",
  [141] = "#af87ff",
  [142] = "#afaf00",
  [143] = "#afaf5f",
  [144] = "#afaf87",
  [145] = "#afafaf",
  [146] = "#afafd7",
  [147] = "#afafff",
  [148] = "#afd700",
  [149] = "#afd75f",
  [150] = "#afd787",
  [151] = "#afd7af",
  [152] = "#afd7d7",
  [153] = "#afd7ff",
  [154] = "#afff00",
  [155] = "#afff5f",
  [156] = "#afff87",
  [157] = "#afffaf",
  [158] = "#afffd7",
  [159] = "#afffff",
  [160] = "#d70000",
  [161] = "#d7005f",
  [162] = "#d70087",
  [163] = "#d700af",
  [164] = "#d700d7",
  [165] = "#d700ff",
  [166] = "#d75f00",
  [167] = "#d75f5f",
  [168] = "#d75f87",
  [169] = "#d75faf",
  [170] = "#d75fd7",
  [171] = "#d75fff",
  [172] = "#d78700",
  [173] = "#d7875f",
  [174] = "#d78787",
  [175] = "#d787af",
  [176] = "#d787d7",
  [177] = "#d787ff",
  [178] = "#d7af00",
  [179] = "#d7af5f",
  [180] = "#d7af87",
  [181] = "#d7afaf",
  [182] = "#d7afd7",
  [183] = "#d7afff",
  [184] = "#d7d700",
  [185] = "#d7d75f",
  [186] = "#d7d787",
  [187] = "#d7d7af",
  [188] = "#d7d7d7",
  [189] = "#d7d7ff",
  [190] = "#d7ff00",
  [191] = "#d7ff5f",
  [192] = "#d7ff87",
  [193] = "#d7ffaf",
  [194] = "#d7ffd7",
  [195] = "#d7ffff",
  [196] = "#ff0000",
  [197] = "#ff005f",
  [198] = "#ff0087",
  [199] = "#ff00af",
  [200] = "#ff00d7",
  [201] = "#ff00ff",
  [202] = "#ff5f00",
  [203] = "#ff5f5f",
  [204] = "#ff5f87",
  [205] = "#ff5faf",
  [206] = "#ff5fd7",
  [207] = "#ff5fff",
  [208] = "#ff8700",
  [209] = "#ff875f",
  [210] = "#ff8787",
  [211] = "#ff87af",
  [212] = "#ff87d7",
  [213] = "#ff87ff",
  [214] = "#ffaf00",
  [215] = "#ffaf5f",
  [216] = "#ffaf87",
  [217] = "#ffafaf",
  [218] = "#ffafd7",
  [219] = "#ffafff",
  [220] = "#ffd700",
  [221] = "#ffd75f",
  [222] = "#ffd787",
  [223] = "#ffd7af",
  [224] = "#ffd7d7",
  [225] = "#ffd7ff",
  [226] = "#ffff00",
  [227] = "#ffff5f",
  [228] = "#ffff87",
  [229] = "#ffffaf",
  [230] = "#ffffd7",
  [231] = "#ffffff",

  -- Gray-scale range.
  [232] = "#080808",
  [233] = "#121212",
  [234] = "#1c1c1c",
  [235] = "#262626",
  [236] = "#303030",
  [237] = "#3a3a3a",
  [238] = "#444444",
  [239] = "#4e4e4e",
  [240] = "#585858",
  [241] = "#626262",
  [242] = "#6c6c6c",
  [243] = "#767676",
  [244] = "#808080",
  [245] = "#8a8a8a",
  [246] = "#949494",
  [247] = "#9e9e9e",
  [248] = "#a8a8a8",
  [249] = "#b2b2b2",
  [250] = "#bcbcbc",
  [251] = "#c6c6c6",
  [252] = "#d0d0d0",
  [253] = "#dadada",
  [254] = "#e4e4e4",
  [255] = "#eeeeee",
}

local light78 = 255 * 7 / 8
local light68 = 255 * 6 / 8
local light58 = 255 * 5 / 8
local light12 = 255 / 2
local light13 = 255 / 3

local function darken_color(rrggbb)
  local r, g, b = rrggbb:match "%#(%x%x)(%x%x)(%x%x)"
  r, g, b = tonumber("0x" .. r), tonumber("0x" .. g), tonumber("0x" .. b)
  -- luminance formula: see https://stackoverflow.com/a/596243
  local lum = 0.299 * r + 0.587 * g + 0.114 * b
  if lum < light13 then -------------------- darkest tertile
    return rrggbb
  elseif lum < light12 then ---------------- second darkest quartile
    r = bit.tohex(r / 4 * 3):sub(-2)
    g = bit.tohex(g / 4 * 3):sub(-2)
    b = bit.tohex(b / 4 * 3):sub(-2)
  elseif lum < light58 then ---------------- lightest octiles: first
    r = bit.tohex(r / 3 * 2):sub(-2)
    g = bit.tohex(g / 3 * 2):sub(-2)
    b = bit.tohex(b / 3 * 2):sub(-2)
  elseif lum < light68 then ---------------- lightest octiles: second
    r = bit.tohex(r / 2):sub(-2)
    g = bit.tohex(g / 2):sub(-2)
    b = bit.tohex(b / 2):sub(-2)
  elseif lum < light78 then ---------------- lightest octiles: third
    r = bit.tohex(r / 3):sub(-2)
    g = bit.tohex(g / 3):sub(-2)
    b = bit.tohex(b / 3):sub(-2)
  else ------------------------------------- lightest octile
    r = bit.tohex(r / 5):sub(-2)
    g = bit.tohex(g / 5):sub(-2)
    b = bit.tohex(b / 5):sub(-2)
  end
  return string.format("#%s%s%s", r, g, b)
end

---@param cterm string: The cterm color number
---@return string rgb Color value in `#rrggbb` format
local function cterm_to_rgb(cterm)
  return cterm_to_rgb_table[tonumber(cterm)]
end

-- Set the current icons tables, depending on the 'background' option.
local function refresh_icons()
  local theme
  local overrides
  if vim.o.background == "light" then
    theme = require "nvim-web-devicons.icons-light"
    overrides = vim.tbl_map(function(value)
      local new_val = {
        icon = value.icon,
        -- one of color or cterm_color should be present, and we will derive
        -- everything to the `color` field to prevent lots of color translating
        color = value.color and darken_color(value.color) or value.cterm_color and darken_color(
          cterm_to_rgb(value.cterm_color)
        ) or nil,
        name = value.name,
      }
      return new_val
    end, global_opts.override)
  else
    theme = require "nvim-web-devicons.icons-default"
    overrides = global_opts.override
    -- populate `color` field if only `cterm_color` is present
    vim.tbl_map(function(value)
      if not value.color and value.cterm_color then
        value.color = cterm_to_rgb(value.cterm_color)
      end
    end, overrides)
  end

  icons_by_filename = theme.icons_by_filename
  icons_by_file_extension = theme.icons_by_file_extension
  icons_by_operating_system = theme.icons_by_operating_system
  icons = vim.tbl_extend("keep", {}, icons_by_filename, icons_by_file_extension, icons_by_operating_system)
  icons = vim.tbl_extend("force", icons, overrides)
end

-- Map of filetypes -> icon names
local filetypes = {
  ["avif"] = "avif",
  ["bzl"] = "bzl",
  ["brewfile"] = "brewfile",
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
  ["gql"] = "gql",
  ["gruntfile"] = "gruntfile",
  ["gulpfile"] = "gulpfile",
  ["haml"] = "haml",
  ["haskell"] = "hs",
  ["hbs"] = "hbs",
  ["heex"] = "heex",
  ["html"] = "html",
  ["ico"] = "ico",
  ["idlang"] = "pro",
  ["import"] = "import",
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
  ["node"] = "node_modules",
  ["ocaml"] = "ml",
  ["ogg"] = "ogg",
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

local default_icon = {
  icon = "",
  color = "#6d8086",
  cterm_color = "66",
  name = "Default",
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

  table.insert(icons, default_icon)

  M.set_up_highlights()

  vim.api.nvim_create_autocmd("ColorScheme", {
    desc = "Re-apply icon colors after changing colorschemes",
    group = vim.api.nvim_create_augroup("NvimWebDevicons", { clear = true }),
    callback = M.set_up_highlights,
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
