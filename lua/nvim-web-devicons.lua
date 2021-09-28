-- references:
-- 1. Linguist: https://github.com/github/linguist
-- 2. coc-explorer: https://github.com/weirongxu/coc-explorer/blob/59bd41f8fffdc871fbd77ac443548426bd31d2c3/src/icons.nerdfont.json#L2
-- 3. chad-tree: https://github.com/ms-jpq/chadtree/blob/f9f333c062/artifacts/icons.json
-- jquery = {
--   icon = "",
--   color = "#1B75BB"
-- },
-- angular = {
--   icon = "",
--   color = "#E23237"
-- },
-- backbone = {
--   icon = "",
--   color = "#0071B5"
-- },
-- requirejs = {
--   icon = "",
--   color = "#F44A41"
-- },
-- materialize = {
--   icon = "",
--   color = "#EE6E73"
-- },
-- mootools = {
--   icon = "",
--   color = "#ECECEC"
-- },
-- puppet = {
--   icon = "",
--   color = Colors.gui0A
-- },

require("colors")

local icons = {
  ["gruntfile"] = {
    icon = "",
    color = Colors.gui09,
    name = "Gruntfile"
  },
  ["gulpfile"] = {
    icon = "",
    color = Colors.gui08,
    name = "Gulpfile"
  },
  ["dropbox"] = {
    icon = "",
    color = Colors.gui0D,
    name = "Dropbox",
  },
  ["xls"] = {
    icon = "",
    color = "#207245",
    name = "Xls",
  },
  ["doc"] = {
    icon = "",
    color = "#185abd",
    name = "Doc",
  },
  ["ppt"] = {
    icon = "",
    color = "#cb4a32",
    name = "Ppt",
  },
  ["xml"] = {
    icon = "謹",
    color = Colors.gui09,
    name = "Xml",
  },
  ["webpack"] = {
    icon = "ﰩ",
    color = Colors.gui0C,
    name = "Webpack",
  },
  [".settings.json"] = {
    icon = "",
    color = Colors.gui0E,
    name = "SettingsJson",
  },
  ["cs"] = {
    icon = "",
    color = "#596706",
    name = "Cs",
  },
  ["procfile"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Procfile"
  },
  ["svg"] = {
    icon = "ﰟ",
    color = "#FFB13B",
    name = "Svg",
  },
  [".bashprofile"] = {
    icon = "",
    color = "#89e051",
    name = "BashProfile"
  };
  [".bashrc"] = {
    icon = "",
    color = "#89e051",
    name = "Bashrc"
  };
  [".babelrc"] = {
    icon = "ﬥ",
    color = Colors.gui0A,
    name = "Babelrc"
  };
  [".ds_store"] = {
    icon = "",
    color = "#41535b",
    name = "DsStore"
  };
  ["git"] = {
    icon = "",
    color = "#F14C28",
    name = "GitLogo"
  };
  [".gitattributes"] = {
    icon = "",
    color = "#41535b",
    name = "GitAttributes"
  };
  [".gitconfig"] = {
    icon = "",
    color = "#41535b",
    name = "GitConfig"
  };
  [".gitignore"] = {
    icon = "",
    color = "#41535b",
    name = "GitIgnore"
  };
  [".gitmodules"] = {
    icon = "",
    color = "#41535b",
    name = "GitModules"
  };
  ["COMMIT_EDITMSG"] = {
    icon = "",
    color = "#41535b",
    name = "GitCommit"
  };
  ["COPYING"] = {
    icon = "",
    color = Colors.gui0A,
    name = "License",
  };
  ["COPYING.LESSER"] = {
    icon = "",
    color = Colors.gui0A,
    name = "License",
  };
  [".gitlab-ci.yml"] = {
    icon = "",
    color = "#e24329",
    name = "GitlabCI"
  };
  [".gvimrc"] = {
    icon = "",
    color = Colors.gui0B,
    name = "Gvimrc"
  };
  [".npmignore"] = {
    icon = "",
    color = "#E8274B",
    name = "NPMIgnore"
  };
  [".vimrc"] = {
    icon = "",
    color = Colors.gui0B,
    name = "Vimrc"
  };
  [".zshrc"] = {
    icon = "",
    color = "#89e051",
    name = "Zshrc"
  };
  [".zshenv"] = {
    icon = "",
    color = "#89e051",
    name = "Zshenv"
  };
  [".zprofile"] = {
    icon = "",
    color = "#89e051",
    name = "Zshprofile"
  };
  ["Dockerfile"] = {
    icon = "",
    color = "#384d54",
    name = "Dockerfile"
  };
  ["Gemfile$"] = {
    icon = "",
    color = "#701516",
    name = "Gemfile"
  };
  ["LICENSE"] = {
    icon = "",
    color = "#d0bf41",
    name = "License"
  };
  ["Vagrantfile$"] = {
    icon = "",
    color = "#1563FF",
    name = "Vagrantfile"
  };
  ["_gvimrc"] = {
    icon = "",
    color = Colors.gui0B,
    name = "Gvimrc"
  };
  ["_vimrc"] = {
    icon = "",
    color = Colors.gui0B,
    name = "Vimrc",
  };
  ["ai"] = {
    icon = "",
    color = Colors.gui0A,
    name = "Ai",
  };
  ["awk"] = {
    icon = "",
    color = "#4d5a5e",
    name = "Awk",
  };
  ["bash"] = {
    icon = "",
    color = "#89e051",
    name = "Bash",
  };
  ["bat"] = {
    icon = "",
    color = "#C1F12E",
    name = "Bat"
  };
  ["bmp"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Bmp"
  };
  ["c"] = {
    icon = "",
    color = "#599eff",
    name = "C"
  };
  ["c++"] = {
    icon = "",
    color = "#f34b7d",
    name = "CPlusPlus"
  };
  ["cc"] = {
    icon = "",
    color = "#f34b7d",
    name = "CPlusPlus"
  };
  ["clj"] = {
    icon = "",
    color = "#8dc149",
    name = "Clojure",
  };
  ["cljc"] = {
    icon = "",
    color = "#8dc149",
    name = "ClojureC"
  };
  ["cljs"] = {
    icon = "",
    color = Colors.gui0C,
    name = "ClojureJS",
  };
  ["CMakeLists.txt"] = {
    icon = "",
    color = "#6d8086",
    name = "CMakeLists"
  };
  ["cmake"] = {
    icon = "",
    color = "#6d8086",
    name = "CMake"
  };
  ["cobol"] = {
    icon = "⚙",
    color = Colors.gui0D,
    name = "Cobol",
  };
  ["cob"] = {
    icon = "⚙",
    color = Colors.gui0D,
    name = "Cobol",
  };
  ["cbl"] = {
    icon = "⚙",
    color = Colors.gui0D,
    name = "Cobol",
  };
  ["cpy"] = {
    icon = "⚙",
    color = Colors.gui0D,
    name = "Cobol",
  };
  ["coffee"] = {
    icon = "",
    color = Colors.gui0A,
    name = "Coffee",
  };
  ["conf"] = {
    icon = "",
    color = "#6d8086",
    name = "Conf",
  };
  ["config.ru"] = {
    icon = "",
    color = "#701516",
    name = "ConfigRu"
  };
  ["cp"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Cp",
  };
  ["cpp"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Cpp",
  };
  ["cr"] = {
    icon = "",
    color = "#000000",
    name = "Crystal",
  };
  ["csh"] = {
    icon = "",
    color = "#4d5a5e",
    name = "Csh",
  };
  ["cson"] = {
    icon = "",
    color = Colors.gui0A,
    name = "Cson",
  };
  ["css"] = {
    icon = "",
    color = "#563d7c",
    name = "Css",
  };
  ["cxx"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Cxx",
  };
  ["d"] = {
    icon = "",
    color = "#427819",
    name = "D",
  };
  ["dart"] = {
    icon = "",
    color = "#03589C",
    name = "Dart",
  };
  ["db"] = {
    icon = "",
    color = "#dad8d8",
    name = "Db",
  };
  ["diff"] = {
    icon = "",
    color = "#41535b",
    name = "Diff",
  };
  ["dockerfile"] = {
    icon = "",
    color = "#384d54",
    name = "Dockerfile",
  };
  ["dump"] = {
    icon = "",
    color = "#dad8d8",
    name = "Dump",
  };
  ["edn"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Edn",
  };
  ["eex"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Eex",
  };
  ["ejs"] = {
    icon = "",
    color = Colors.gui0A,
    name = "Ejs",
  };
  ["elm"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Elm",
  };
  ["erl"] = {
    icon = "",
    color = "#B83998",
    name = "Erl",
  };
  ["ex"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Ex",
  };
  ["exs"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Exs",
  };
  ["f#"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Fsharp"
  };
  ["favicon.ico"] = {
    icon = "",
    color = Colors.gui0A,
    name = "Favicon"
  };
  ["fish"] = {
    icon = "",
    color = "#4d5a5e",
    name = "Fish",
  };
  ["fs"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Fs",
  };
  ["fsi"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Fsi",
  };
  ["fsscript"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Fsscript",
  };
  ["fsx"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Fsx",
  };
  ["gemspec"] = {
    icon = "",
    color = "#701516",
    name = "Gemspec",
  };
  ["gif"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Gif",
  };
  ["go"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Go",
  };
  ["h"] = {
    icon = "",
    color = Colors.gui0E,
    name = "H",
  };
  ["haml"] = {
    icon = "",
    color = "#eaeae1",
    name = "Haml",
  };
  ["hbs"] = {
    icon = "",
    color = "#f0772b",
    name = "Hbs",
  };
  ["hh"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Hh",
  };
  ["hpp"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Hpp",
  };
  ["hrl"] = {
    icon = "",
    color = "#B83998",
    name = "Hrl",
  };
  ["hs"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Hs",
  };
  ["htm"] = {
    icon = "",
    color = "#e34c26",
    name = "Htm",
  };
  ["html"] = {
    icon = "",
    color = "#e34c26",
    name = "Html",
  };
  ["erb"] = {
    icon = "",
    color = "#701516",
    name = "Erb",
  };
  ["hxx"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Hxx",
  };
  ["ico"] = {
    icon = "",
    color = Colors.gui0A,
    name = "Ico",
  };
  ["ini"] = {
    icon = "",
    color = "#6d8086",
    name = "Ini",
  };
  ["java"] = {
    icon = "",
    color = Colors.gui08,
    name = "Java",
  };
  ["jl"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Jl",
  };
  ["jpeg"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Jpeg",
  };
  ["jpg"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Jpg",
  };
  ["js"] = {
    icon = "",
    color = Colors.gui0A,
    name = "Js",
  };
  ["json"] = {
    icon = "",
    color = Colors.gui0A,
    name = "Json",
  };
  ["jsx"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Jsx",
  };
  ["ksh"] = {
    icon = "",
    color = "#4d5a5e",
    name = "Ksh",
  };
  ["leex"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Leex",
  };
  ["less"] = {
    icon = "",
    color = "#563d7c",
    name = "Less",
  };
  ["lhs"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Lhs",
  };
  ["license"] = {
    icon = "",
    color = Colors.gui0A,
    name = "License",
  };
  ["lua"] = {
    icon = "",
    color = "#51a0cf",
    name = "Lua",
  };
  ["makefile"] = {
    icon = "",
    color = "#6d8086",
    name = "Makefile",
  };
  ["markdown"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Markdown",
  };
  ["md"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Md",
  };
  ["mdx"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Mdx",
  };
  ["mix.lock"] = {
    icon = "",
    color = Colors.gui0E,
    name = "MixLock"
  };
  ["mjs"] = {
    icon = "",
    color = Colors.gui0A,
    name = "Mjs",
  };
  ["ml"] = {
    icon = "λ",
    color = Colors.gui09,
    name = "Ml"
  };
  ["mli"] = {
    icon = "λ",
    color = Colors.gui09,
    name = "Mli",
  };
  ["mustache"] = {
    icon = "",
    color = Colors.gui09,
    name = "Mustache",
  };
  ["nix"] = {
    icon = "",
    color = "#7ebae4",
    name = "Nix",
  };
  ["node_modules"] = {
    icon = "",
    color = "#E8274B",
    name = "NodeModules",
  };
  ["php"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Php"
  };
  ["pl"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Pl"
  };
  ["pm"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Pm"
  };
  ["png"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Png"
  };
  ["pp"] = {
    icon = "",
    color = "#302B6D",
    name = "Pp"
  };
  ["ps1"] = {
    icon = "",
    color = "#4d5a5e",
    name = "PromptPs1"
  };
  ["psb"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Psb"
  };
  ["psd"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Psd"
  };
  ["py"] = {
    icon = "",
    color = "#3572A5",
    name = "Py"
  };
  ["pyc"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Pyc"
  };
  ["pyd"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Pyd",
  };
  ["pyo"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Pyo"
  };
  ["r"] = {
    icon = "ﳒ",
    color = Colors.gui0B,
    name = "R"
  };
  ["R"] = {
    icon = "ﳒ",
    color = Colors.gui0B,
    name = "R"
  };
  ["rake"] = {
    icon = "",
    color = "#701516",
    name = "Rake"
  };
  ["rakefile"] = {
    icon = "",
    color = "#701516",
    name = "Rakefile"
  };
  ["rb"] = {
    icon = "",
    color = "#701516",
    name = "Rb"
  };
  ["rlib"] = {
    icon = "",
    color = "#dea584",
    name = "Rlib",
  };
  ["rmd"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Rmd"
  };
  ["Rmd"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Rmd"
  };
  ["rproj"] = {
    icon = "鉶",
    color = Colors.gui0B,
    name = "Rproj"
  };
  ["rs"] = {
    icon = "",
    color = "#dea584",
    name = "Rs"
  };
  ["rss"] = {
    icon = "",
    color = "#FB9D3B",
    name = "Rss"
  };
  ["sass"] = {
    icon = "",
    color = "#f55385",
    name = "Sass"
  };
  ["scala"] = {
    icon = "",
    color = Colors.gui08,
    name = "Scala"
  };
  ["scss"] = {
    icon = "",
    color = "#f55385",
    name = "Scss"
  };
  ["sh"] = {
    icon = "",
    color = "#4d5a5e",
    name = "Sh"
  };
  ["sig"] = {
    icon = "λ",
    color = Colors.gui09,
    name = "Sig"
  };
  ["slim"] = {
    icon = "",
    color = "#e34c26",
    name = "Slim"
  };
  ["sln"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Sln"
  };
  ["sml"] = {
    icon = "λ",
    color = Colors.gui09,
    name = "Sml"
  };
  ["sql"] = {
    icon = "",
    color = "#dad8d8",
    name = "Sql"
  };
  ["styl"] = {
    icon = "",
    color = "#8dc149",
    name = "Styl"
  };
  ["suo"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Suo"
  };
  ["swift"] = {
    icon = "",
    color = Colors.gui09,
    name = "Swift"
  };
  ["t"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Tor"
  };
  ["tex"] = {
    icon = "ﭨ",
    color = "#3D6117",
    name = "Tex"
  };
  ["toml"] = {
    icon = "",
    color = "#6d8086",
    name = "Toml"
  };
  ["ts"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Ts"
  };
  ["tsx"] = {
    icon = "",
    color = Colors.gui0C,
    name = "Tsx"
  };
  ["twig"] = {
    icon = "",
    color = "#8dc149",
    name = "Twig"
  };
  ["vim"] = {
    icon = "",
    color = Colors.gui0B,
    name = "Vim"
  };
  ["vue"] = {
    icon = "﵂",
    color = "#8dc149",
    name = "Vue"
  };
  ["webmanifest"] = {
    icon = "",
    color = Colors.gui0A,
    name = "Webmanifest"
  };
  ["webp"] = {
    icon = "",
    color = Colors.gui0E,
    name = "Webp"
  };
  ["xcplayground"] = {
    icon = "",
    color = Colors.gui09,
    name = "XcPlayground",
  };
  ["xul"] = {
    icon = "",
    color = Colors.gui09,
    name = "Xul"
  };
  ["yaml"] = {
    icon = "",
    color = "#6d8086",
    name = "Yaml"
  };
  ["yml"] = {
    icon = "",
    color = "#6d8086",
    name = "Yml"
  };
  ["zsh"] = {
    icon = "",
    color = "#89e051",
    name = "Zsh"
  };
  ["terminal"] = {
    icon = "",
    color = "#31B53E",
    name = "Terminal"
  };
  ["pdf"] = {
    icon = "",
    color = "#b30b00",
    name = "Pdf"
  };
  ["kt"] = {
    icon = "𝙆",
    color = "#F88A02",
    name = "Kotlin"
  };
  ["gd"] = {
    icon = "",
    color = "#6d8086",
    name = "GDScript"
  };
  ["tscn"] = {
    icon = "",
    color = Colors.gui0E,
    name = "TextScene"
  };
  ["godot"] = {
    icon = "",
    color = "#6d8086",
    name = "GodotProject"
  };
  ["tres"] = {
    icon = "",
    color = Colors.gui0A,
    name = "TextResource"
  };
  ["glb"] = {
    icon = "",
    color = "#FFB13B",
    name = "BinaryGLTF"
  };
  ["import"] = {
    icon = "",
    color = "#ECECEC",
    name = "ImportConfiguration"
  };
  ["material"] = {
    icon = "",
    color = "#B83998",
    name = "Material"
  };
  ["otf"] = {
    icon = "",
    color = "#ECECEC",
    name = "OpenTypeFont"
  };
  ["cfg"] = {
    icon = "",
    color = "#ECECEC",
    name = "Configuration"
  };
  ["pck"] = {
    icon = "",
    color = "#6d8086",
    name = "PackedResource"
  };
  ["desktop"] = {
    icon = "",
    color = "#563d7c",
    name = "DesktopEntry"
  };
  ["opus"] = {
    icon = "",
    color = "#F88A02",
    name = "OPUS"
  };
  ["svelte"] = {
    icon = "",
    color = "#ff3e00",
    name = "Svelte"
  };
  ["pro"] = {
    icon = "",
    color = "#e4b854",
    name = "Prolog"
  };
}

local default_icon = {
  icon = "",
  color = "#6d8086",
  name = "Default",
}

local global_opts = {
  override = {},
  default = false
}

local function get_highlight_name(data)
  return data.name and "DevIcon" .. data.name
end

local function set_up_highlight(icon_data)
  local hl_group = get_highlight_name(icon_data)
  if hl_group then
    vim.api.nvim_command("highlight! "..hl_group.. " guifg="..icon_data.color)
  end
end

local function set_up_highlights()
  for _, icon_data in pairs(icons) do
    if icon_data.color and icon_data.name then
      set_up_highlight(icon_data)
    end
  end
end

local loaded = false

local function setup(opts)
  if loaded then return end

  loaded = true

  local user_icons = opts or {}

  if user_icons.default then
    global_opts.default = true
  end

  if user_icons.override and user_icons.override.default_icon then
    default_icon = user_icons.override.default_icon
  end

  icons = vim.tbl_extend("force", icons, user_icons.override or {});

  table.insert(icons, default_icon)

  set_up_highlights()

  vim.cmd [[augroup NvimWebDevicons]]
  vim.cmd [[autocmd!]]
  vim.cmd [[autocmd ColorScheme * lua require('nvim-web-devicons').set_up_highlights()]]
  vim.cmd [[augroup END]]
end

local function get_icon(name, ext, opts)
  if not loaded then
    setup()
  end

  local has_default = (opts and opts.default) or global_opts.default
  local icon_data = icons[name] or icons[ext] or (has_default and default_icon)

  if icon_data then
    return icon_data.icon, get_highlight_name(icon_data)
  end
end

local function get_icon_color(name, ext, opts)
  if not loaded then
    setup()
  end

  local has_default = (opts and opts.default) or global_opts.default
  local icon_data = icons[name] or icons[ext] or (has_default and default_icon)

  if icon_data then
    return icon_data.icon, icon_data.color
  end
end

local function set_icon(user_icons)
  icons = vim.tbl_extend("force", icons, user_icons or {})
  for _, icon_data in pairs(user_icons) do
    set_up_highlight(icon_data)
  end
end

local function set_default_icon(icon, color)
  default_icon.icon = icon
  default_icon.color = color
  set_up_highlight(default_icon)
end

return {
  get_icon = get_icon,
  get_icon_color = get_icon_color,
  set_icon = set_icon,
  set_default_icon = set_default_icon,
  setup = setup,
  has_loaded = function() return loaded end,
  get_icons = function() return icons end,
  set_up_highlights = set_up_highlights,
}
