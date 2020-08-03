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
--   color = "#cbcb41"
-- },

local icons = {
  ["gruntfile"] = {
    icon = "",
    color = "#e37933",
    name = "Gruntfile"
  },
  ["gulpfile"] = {
    icon = "",
    color = "#cc3e44",
    name = "Gulpfile"
  },
  ["dropbox"] = {
    icon = "",
    color = "#0061FE",
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
    color = "#e37933",
    name = "Xml",
  },
  ["webpack"] = {
    icon = "ﰩ",
    color = "#519aba",
    name = "Webpack",
  },
  [".settings.json"] = {
    icon = "",
    color = "#854CC7",
    name = "SettingsJson",
  },
  ["cs"] = {
    icon = "",
    color = "#596706",
    name = "Cs",
  },
  ["jl"] = {
    icon = "",
    color = "#a074c4",
    name = "Jl"
  },
  ["procfile"] = {
    icon = "",
    color = "#a074c4"
  },
  ["svg"] = {
    code = "ﰟ",
    color = "#FFB13B"
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
    color = "#cbcb41",
    name = "Babelrc"
  };
  [".ds_store"] = {
    icon = "",
    color = "#41535b",
    name = "DsStore"
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
  [".gitlab-ci.yml"] = {
    icon = "",
    color = "#41535b",
    name = "GitlabCI"
  };
  [".gvimrc"] = {
    icon = "",
    color = "#019833",
    name = "Gvimrc"
  };
  [".npmignore"] = {
    icon = "",
    color = "#E8274B",
    name = "NPMIgnore"
  };
  [".vimrc"] = {
    icon = "",
    color = "#019833",
    name = "Vimrc"
  };
  [".zshrc"] = {
    icon = "",
    color = "#89e051",
    name = "Zshrc"
  };
  ["Dockerfile"] = {
    icon = "",
    color = "#384d54"
  };
  ["Gemfile$"] = {
    icon = "",
    color = "#701516"
  };
  ["LICENSE"] = {
    icon = "",
    color = "#cbcb41"
  };
  ["Vagrantfile$"] = {
    icon = "",
    color = "#1563FF"
  };
  ["_gvimrc"] = {
    icon = "",
    color = "#019833",
  };
  ["_vimrc"] = {
    icon = "",
    color = "#019833",
  };
  ["ai"] = {
    icon = "",
    color = "#cbcb41"
  };
  ["awk"] = {
    icon = "",
    color = "#4d5a5e"
  };
  ["bash"] = {
    icon = "",
    color = "#89e051"
  };
  ["bat"] = {
    icon = "",
    color = "#C1F12E",
  };
  ["bmp"] = {
    icon = "",
    color = "#a074c4",
  };
  ["c"] = {
    icon = "",
    color = "#555555",
  };
  ["c++"] = {
    icon = "",
    color = "#f34b7d",
    name = "CplusPlus"
  };
  ["cc"] = {
    icon = "",
    color = "#f34b7d"
  };
  ["clj"] = {
    icon = "",
    color = "#8dc149"
  };
  ["cljc"] = {
    icon = "",
    color = "#8dc149"
  };
  ["cljs"] = {
    icon = "",
    color = "#519aba"
  };
  ["cmakelists.txt"] = {
    icon = "",
    color = "#6d8086",
    name = "CmakeLists"
  };
  ["coffee"] = {
    icon = "",
    color = "#cbcb41"
  };
  ["conf"] = {
    icon = "",
    color = "#6d8086"
  };
  ["config.ru"] = {
    icon = "",
    color = "#701516",
    name = "ConfigRu"
  };
  ["cp"] = {
    icon = "",
    color = "#519aba"
  };
  ["cpp"] = {
    icon = "",
    color = "#519aba"
  };
  ["csh"] = {
    icon = "",
    color = "#4d5a5e"
  };
  ["css"] = {
    icon = "",
    color = "#563d7c"
  };
  ["cxx"] = {
    icon = "",
    color = "#519aba"
  };
  ["d"] = {
    icon = "",
    color = "#427819",
  };
  ["dart"] = {
    icon = "",
    color = "#03589C"
  };
  ["db"] = {
    icon = "",
    color = "#dad8d8",
  };
  ["diff"] = {
    icon = "",
    color = "#41535b"
  };
  ["dockerfile"] = {
    icon = "",
    color = "#384d54"
  };
  ["dump"] = {
    icon = "",
    color = "#dad8d8",
  };
  ["edn"] = {
    icon = "",
    color = "#519aba"
  };
  ["eex"] = {
    icon = "",
    color = "#a074c4"
  };
  ["ejs"] = {
    icon = "",
    color = "#cbcb41"
  };
  ["elm"] = {
    icon = "",
    color = "#519aba"
  };
  ["erl"] = {
    icon = "",
    color = "#B83998",
  };
  ["ex"] = {
    icon = "",
    color = "#a074c4"
  };
  ["exs"] = {
    icon = "",
    color = "#a074c4"
  };
  ["f#"] = {
    icon = "",
    color = "#519aba",
    name = "Fsharp"
  };
  ["favicon.ico"] = {
    icon = "",
    color = "#cbcb41",
    name = "Favicon"
  };
  ["fish"] = {
    icon = "",
    color = "#4d5a5e"
  };
  ["fs"] = {
    icon = "",
    color = "#519aba"
  };
  ["fsi"] = {
    icon = "",
    color = "#519aba"
  };
  ["fsscript"] = {
    icon = "",
    color = "#519aba"
  };
  ["fsx"] = {
    icon = "",
    color = "#519aba"
  };
  ["gemspec"] = {
    icon = "",
    color = "#701516"
  };
  ["gif"] = {
    icon = "",
    color = "#a074c4",
  };
  ["go"] = {
    icon = "",
    color = "#519aba"
  };
  ["h"] = {
    icon = "",
    color = "#a074c4"
  };
  ["haml"] = {
    icon = "",
    color = "#eaeae1",
  };
  ["hbs"] = {
    icon = "",
    color = "#f0772b",
  };
  ["hh"] = {
    icon = "",
    color = "#a074c4"
  };
  ["hpp"] = {
    icon = "",
    color = "#a074c4"
  };
  ["hrl"] = {
    icon = "",
    color = "#B83998",
  };
  ["hs"] = {
    icon = "",
    color = "#a074c4"
  };
  ["htm"] = {
    icon = "",
    color = "#e34c26",
  };
  ["html"] = {
    icon = "",
    color = "#e34c26"
  };
  ["hxx"] = {
    icon = "",
    color = "#a074c4"
  };
  ["ico"] = {
    icon = "",
    color = "#cbcb41"
  };
  ["ini"] = {
    icon = "",
    color = "#6d8086"
  };
  ["java"] = {
    icon = "",
    color = "#cc3e44"
  };
  ["jl"] = {
    icon = "",
    color = "#a270ba",
  };
  ["jpeg"] = {
    icon = "",
    color = "#a074c4",
  };
  ["jpg"] = {
    icon = "",
    color = "#a074c4",
  };
  ["js"] = {
    icon = "",
    color = "#cbcb41"
  };
  ["json"] = {
    icon = "",
    color = "#cbcb41"
  };
  ["jsx"] = {
    icon = "",
    color = "#519aba"
  };
  ["ksh"] = {
    icon = "",
    color = "#4d5a5e"
  };
  ["leex"] = {
    icon = "",
    color = "#a074c4"
  };
  ["less"] = {
    icon = "",
    color = "#563d7c",
  };
  ["lhs"] = {
    icon = "",
    color = "#a074c4"
  };
  ["license"] = {
    icon = "",
    color = "#cbcb41"
  };
  ["lua"] = {
    icon = "",
    color = "#519aba"
  };
  ["makefile"] = {
    icon = "",
    color = "#6d8086"
  };
  ["markdown"] = {
    icon = "",
    color = "#519aba"
  };
  ["md"] = {
    icon = "",
    color = "#519aba"
  };
  ["mdx"] = {
    icon = "",
    color = "#519aba"
  };
  ["mix.lock"] = {
    icon = "",
    color = "#a074c4",
    name = "MixLock"
  };
  ["mjs"] = {
    icon = "",
    color = "#f1e05a",
  };
  ["ml"] = {
    icon = "λ",
    color = "#e37933"
  };
  ["mli"] = {
    icon = "λ",
    color = "#e37933"
  };
  ["mustache"] = {
    icon = "",
    color = "#e37933"
  };
  ["node_modules"] = {
    icon = "",
    color = "#E8274B",
    name = "NodeModules",
  };
  ["php"] = {
    icon = "",
    color = "#a074c4"
  };
  ["pl"] = {
    icon = "",
    color = "#519aba"
  };
  ["pm"] = {
    icon = "",
    color = "#519aba"
  };
  ["png"] = {
    icon = "",
    color = "#a074c4",
  };
  ["pp"] = {
    icon = "",
    color = "#302B6D",
  };
  ["ps1"] = {
    icon = "",
    color = "#4d5a5e"
  };
  ["psb"] = {
    icon = "",
    color = "#519aba"
  };
  ["psd"] = {
    icon = "",
    color = "#519aba"
  };
  ["py"] = {
    icon = "",
    color = "#3572A5"
  };
  ["pyc"] = {
    icon = "",
    color = "#519aba"
  };
  ["pyd"] = {
    icon = "",
    color = "#519aba"
  };
  ["pyo"] = {
    icon = "",
    color = "#519aba"
  };
  ["r"] = {
    icon = "ﳒ",
    color = "#358a5b",
  };
  ["rake"] = {
    icon = "",
    color = "#701516"
  };
  ["rakefile"] = {
    icon = "",
    color = "#701516"
  };
  ["rb"] = {
    icon = "",
    color = "#701516"
  };
  ["rlib"] = {
    icon = "",
    color = "#dea584",
  };
  ["rmd"] = {
    icon = "",
    color = "#519aba",
  };
  ["rproj"] = {
    icon = "鉶",
    color = "#358a5b",
  };
  ["rs"] = {
    icon = "",
    color = "#dea584",
  };
  ["rss"] = {
    icon = "",
    color = "#FB9D3B"
  };
  ["sass"] = {
    icon = "",
    color = "#f55385"
  };
  ["scala"] = {
    icon = "",
    color = "#cc3e44"
  };
  ["scss"] = {
    icon = "",
    color = "#f55385",
  };
  ["sh"] = {
    icon = "",
    color = "#4d5a5e"
  };
  ["slim"] = {
    icon = "",
    color = "#e34c26",
  };
  ["sln"] = {
    icon = "",
    color = "#854CC7"
  };
  ["sql"] = {
    icon = "",
    color = "#dad8d8"
  };
  ["styl"] = {
    icon = "",
    color = "#8dc149"
  };
  ["suo"] = {
    icon = "",
    color = "#854CC7"
  };
  ["swift"] = {
    icon = "",
    color = "#e37933"
  };
  ["t"] = {
    icon = "",
    color = "#519aba"
  };
  ["tex"] = {
    icon = "ﭨ",
    color = "#3D6117",
  };
  ["toml"] = {
    icon = "",
    color = "#6d8086"
  };
  ["ts"] = {
    icon = "",
    color = "#519aba",
  };
  ["tsx"] = {
    icon = "",
    color = "#519aba",
  };
  ["twig"] = {
    icon = "",
    color = "#8dc149"
  };
  ["vim"] = {
    icon = "",
    color = "#019833",
  };
  ["vue"] = {
    icon = "﵂",
    color = "#8dc149"
  };
  ["webmanifest"] = {
    icon = "",
    color = "#f1e05a",
  };
  ["webp"] = {
    icon = "",
    color = "#a074c4",
  };
  ["xcplayground"] = {
    icon = "",
    color = "#e37933",
  };
  ["xul"] = {
    icon = "",
    color = "#e37933"
  };
  ["yaml"] = {
    icon = "",
    color = "#6d8086"
  };
  ["yml"] = {
    icon = "",
    color = "#6d8086"
  };
  ["zsh"] = {
    icon = "",
    color = "#89e051"
  };
}

local function get_highlight_name(data)
 if not data then return end
 return data.name .. "DevIcon"
end

local function normalise_name(name)
  local s = name
  -- lowercase
  s = s:lower()
  -- strip leading dot
  s = name:gsub("^%.", "")
  -- strip ext
  s = s:gsub("%..*$", "")
  -- capitalize letters after dashes or underlines
  s = s:gsub("%-(%l)", string.upper)
  s = s:gsub("_(%l)", string.upper)
  -- capitalize first letter
  s = (s:gsub("^%l", string.upper))
  return s
end

return {
  get_icon = function(name, ext)
    local icon_data = icons[name]
    local by_name = icon_data and icon_data.icon or nil

    if by_name then
      return by_name, get_highlight_name(icon_data) .. "Icon"
    else
      icon_data = icons[ext]
      local by_ext = icon_data and icon_data.icon or nil
      return by_ext, get_highlight_name(ext)
    end
  end,
  setup = function()
    for name, icon in pairs(icons) do
      if icon.color then
        name = normalise_name(name)
        local hl_group =  get_highlight_name(name)
        vim.cmd("highlight! "..hl_group.. " guifg="..icon.color)
      end
    end
  end
}
