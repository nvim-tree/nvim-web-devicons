local M = {}

M.icons_by_filename = {
  [".babelrc"] = {
    class = "seti-less",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "Babelrc"
  },
  [".bash_profile"] = {
    class = "seti-config",
    color = "#89e051",
    cterm_color = "113",
    icon = "",
    name = "BashProfile"
  },
  [".bashrc"] = {
    class = "seti-config",
    color = "#89e051",
    cterm_color = "113",
    icon = "",
    name = "Bashrc"
  },
  [".dockerignore"] = {
    class = "md-docker",
    color = "#458ee6",
    cterm_color = "68",
    icon = "󰡨",
    name = "Dockerfile"
  },
  [".ds_store"] = {
    class = "seti-config",
    color = "#41535b",
    cterm_color = "239",
    icon = "",
    name = "DsStore"
  },
  [".editorconfig"] = {
    class = "seti-editorconfig",
    color = "#fff2f2",
    cterm_color = "255",
    icon = "",
    name = "EditorConfig"
  },
  [".env"] = {
    class = "oct-sliders",
    color = "#faf743",
    cterm_color = "227",
    icon = "",
    name = "Env"
  },
  [".eslintignore"] = {
    class = "seti-eslint",
    color = "#4b32c3",
    cterm_color = "56",
    icon = "",
    name = "EslintIgnore"
  },
  [".eslintrc"] = {
    class = "seti-eslint",
    color = "#4b32c3",
    cterm_color = "56",
    icon = "",
    name = "Eslintrc"
  },
  [".gitattributes"] = {
    class = "dev-git",
    color = "#41535b",
    cterm_color = "239",
    icon = "",
    name = "GitAttributes"
  },
  [".gitconfig"] = {
    class = "seti-config",
    color = "#41535b",
    cterm_color = "239",
    icon = "",
    name = "GitConfig"
  },
  [".gitignore"] = {
    class = "dev-git",
    color = "#41535b",
    cterm_color = "239",
    icon = "",
    name = "GitIgnore"
  },
  [".gitlab-ci.yml"] = {
    class = "fa-gitlab",
    color = "#e24329",
    cterm_color = "196",
    icon = "",
    name = "GitlabCI"
  },
  [".gitmodules"] = {
    class = "dev-git",
    color = "#41535b",
    cterm_color = "239",
    icon = "",
    name = "GitModules"
  },
  [".gvimrc"] = {
    class = "custom-vim",
    color = "#019833",
    cterm_color = "28",
    icon = "",
    name = "Gvimrc"
  },
  [".luaurc"] = {
    class = "seti-config",
    color = "#00a2ff",
    cterm_color = "75",
    icon = "",
    name = "Luaurc"
  },
  [".npmignore"] = {
    class = "dev-npm",
    color = "#E8274B",
    cterm_color = "197",
    icon = "",
    name = "NPMIgnore"
  },
  [".npmrc"] = {
    class = "dev-npm",
    color = "#E8274B",
    cterm_color = "197",
    icon = "",
    name = "NPMrc"
  },
  [".prettierrc"] = {
    class = "custom-prettier",
    color = "#4285F4",
    cterm_color = "33",
    icon = "",
    name = "PrettierConfig"
  },
  [".settings.json"] = {
    class = "dev-visualstudio",
    color = "#854CC7",
    cterm_color = "98",
    icon = "",
    name = "SettingsJson"
  },
  [".vimrc"] = {
    class = "custom-vim",
    color = "#019833",
    cterm_color = "28",
    icon = "",
    name = "Vimrc"
  },
  [".zprofile"] = {
    class = "seti-config",
    color = "#89e051",
    cterm_color = "113",
    icon = "",
    name = "Zshprofile"
  },
  [".zshenv"] = {
    class = "seti-config",
    color = "#89e051",
    cterm_color = "113",
    icon = "",
    name = "Zshenv"
  },
  [".zshrc"] = {
    class = "seti-config",
    color = "#89e051",
    cterm_color = "113",
    icon = "",
    name = "Zshrc"
  },
  R = {
    class = "md-language_r",
    color = "#2266ba",
    cterm_color = "25",
    icon = "󰟔",
    name = "R"
  },
  _gvimrc = {
    class = "custom-vim",
    color = "#019833",
    cterm_color = "28",
    icon = "",
    name = "Gvimrc"
  },
  _vimrc = {
    class = "custom-vim",
    color = "#019833",
    cterm_color = "28",
    icon = "",
    name = "Vimrc"
  },
  avif = {
    class = "seti-image",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Avif"
  },
  brewfile = {
    class = "dev-ruby_rough",
    color = "#701516",
    cterm_color = "52",
    icon = "",
    name = "Brewfile"
  },
  build = {
    class = "seti-bazel",
    color = "#89e051",
    cterm_color = "113",
    icon = "",
    name = "BazelBuild"
  },
  ["build.zig.zon"] = {
    class = "seti-zig",
    color = "#f69a1b",
    cterm_color = "172",
    icon = "",
    name = "ZigObjectNotation"
  },
  checkhealth = {
    class = "md-stethoscope",
    color = "#75B4FB",
    cterm_color = "75",
    icon = "󰓙",
    name = "Checkhealth"
  },
  ["cmakelists.txt"] = {
    class = "seti-config",
    color = "#6d8086",
    cterm_color = "66",
    icon = "",
    name = "CMakeLists"
  },
  commit_editmsg = {
    class = "dev-git",
    color = "#41535b",
    cterm_color = "239",
    icon = "",
    name = "GitCommit"
  },
  ["compose.yaml"] = {
    class = "md-docker",
    color = "#458ee6",
    cterm_color = "68",
    icon = "󰡨",
    name = "Dockerfile"
  },
  ["compose.yml"] = {
    class = "md-docker",
    color = "#458ee6",
    cterm_color = "68",
    icon = "󰡨",
    name = "Dockerfile"
  },
  containerfile = {
    class = "md-docker",
    color = "#458ee6",
    cterm_color = "68",
    icon = "󰡨",
    name = "Dockerfile"
  },
  copying = {
    class = "seti-license",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "License"
  },
  ["copying.lesser"] = {
    class = "seti-license",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "License"
  },
  ["docker-compose.yaml"] = {
    class = "md-docker",
    color = "#458ee6",
    cterm_color = "68",
    icon = "󰡨",
    name = "Dockerfile"
  },
  ["docker-compose.yml"] = {
    class = "md-docker",
    color = "#458ee6",
    cterm_color = "68",
    icon = "󰡨",
    name = "Dockerfile"
  },
  dockerfile = {
    class = "md-docker",
    color = "#458ee6",
    cterm_color = "68",
    icon = "󰡨",
    name = "Dockerfile"
  },
  ["favicon.ico"] = {
    class = "seti-favicon",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "Favicon"
  },
  ["gemfile$"] = {
    class = "dev-ruby_rough",
    color = "#701516",
    cterm_color = "52",
    icon = "",
    name = "Gemfile"
  },
  gnumakefile = {
    class = "dev-gnu",
    color = "#6d8086",
    cterm_color = "66",
    icon = "",
    name = "Makefile"
  },
  groovy = {
    class = "dev-groovy",
    color = "#4a687c",
    cterm_color = "24",
    icon = "",
    name = "Groovy"
  },
  gruntfile = {
    class = "seti-grunt",
    color = "#e37933",
    cterm_color = "166",
    icon = "",
    name = "Gruntfile"
  },
  gulpfile = {
    class = "seti-gulp",
    color = "#cc3e44",
    cterm_color = "167",
    icon = "",
    name = "Gulpfile"
  },
  license = {
    class = "seti-license",
    color = "#d0bf41",
    cterm_color = "185",
    icon = "",
    name = "License"
  },
  makefile = {
    class = "dev-gnu",
    color = "#6d8086",
    cterm_color = "66",
    icon = "",
    name = "Makefile"
  },
  ["mix.lock"] = {
    class = "seti-elixir",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "MixLock"
  },
  node_modules = {
    class = "dev-nodejs_small",
    color = "#E8274B",
    cterm_color = "197",
    icon = "",
    name = "NodeModules"
  },
  ["package-lock.json"] = {
    class = "dev-npm",
    color = "#7a0d21",
    cterm_color = "52",
    icon = "",
    name = "PackageLockJson"
  },
  ["package.json"] = {
    class = "dev-npm",
    color = "#e8274b",
    cterm_color = "197",
    icon = "",
    name = "PackageJson"
  },
  procfile = {
    class = "seti-heroku",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Procfile"
  },
  ["py.typed"] = {
    class = "seti-python",
    color = "#ffbc03",
    cterm_color = "214",
    icon = "",
    name = "Py.typed"
  },
  r = {
    class = "md-language_r",
    color = "#2266ba",
    cterm_color = "25",
    icon = "󰟔",
    name = "R"
  },
  rakefile = {
    class = "dev-ruby_rough",
    color = "#701516",
    cterm_color = "52",
    icon = "",
    name = "Rakefile"
  },
  rmd = {
    class = "seti-markdown",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Rmd"
  },
  ["svelte.config.js"] = {
    class = "seti-svelte",
    color = "#ff3e00",
    cterm_color = "196",
    icon = "",
    name = "SvelteConfig"
  },
  ["tailwind.config.js"] = {
    class = "md-tailwind",
    color = "#20c2e3",
    cterm_color = "45",
    icon = "󱏿",
    name = "TailwindConfig"
  },
  ["tailwind.config.mjs"] = {
    class = "md-tailwind",
    color = "#20c2e3",
    cterm_color = "45",
    icon = "󱏿",
    name = "TailwindConfig"
  },
  ["tailwind.config.ts"] = {
    class = "md-tailwind",
    color = "#20c2e3",
    cterm_color = "45",
    icon = "󱏿",
    name = "TailwindConfig"
  },
  ["tsconfig.json"] = {
    class = "seti-tsconfig",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "TSConfig"
  },
  unlicense = {
    class = "seti-license",
    color = "#d0bf41",
    cterm_color = "185",
    icon = "",
    name = "License"
  },
  ["vagrantfile$"] = {
    class = "fa-linode",
    color = "#1563FF",
    cterm_color = "27",
    icon = "",
    name = "Vagrantfile"
  },
  webpack = {
    class = "md-webpack",
    color = "#519aba",
    cterm_color = "74",
    icon = "󰜫",
    name = "Webpack"
  },
  workspace = {
    class = "seti-bazel",
    color = "#89e051",
    cterm_color = "113",
    icon = "",
    name = "BazelWorkspace"
  }
}

M.icons_by_file_extension = {
  Dockerfile = {
    class = "md-docker",
    color = "#458ee6",
    cterm_color = "68",
    icon = "󰡨",
    name = "Dockerfile"
  },
  R = {
    class = "md-language_r",
    color = "#2266ba",
    cterm_color = "25",
    icon = "󰟔",
    name = "R"
  },
  aac = {
    class = "fa-music",
    color = "#66D8EF",
    cterm_color = "45",
    icon = "",
    name = "Aac"
  },
  ai = {
    class = "dev-illustrator",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "Ai"
  },
  app = {
    class = "cod-file_binary",
    color = "#9F0500",
    cterm_color = "124",
    icon = "",
    name = "App"
  },
  applescript = {
    class = "fa-apple",
    color = "#6d8085",
    cterm_color = "66",
    icon = "",
    name = "AppleScript"
  },
  awk = {
    class = "dev-terminal",
    color = "#4d5a5e",
    cterm_color = "240",
    icon = "",
    name = "Awk"
  },
  azcli = {
    class = "cod-azure_devops",
    color = "#0078d4",
    cterm_color = "32",
    icon = "",
    name = "AzureCli"
  },
  bak = {
    class = "md-backup_restore",
    color = "#6d8086",
    cterm_color = "66",
    icon = "󰁯",
    name = "Backup"
  },
  bash = {
    class = "dev-terminal",
    color = "#89e051",
    cterm_color = "113",
    icon = "",
    name = "Bash"
  },
  bat = {
    class = "seti-config",
    color = "#C1F12E",
    cterm_color = "191",
    icon = "",
    name = "Bat"
  },
  bazel = {
    class = "seti-bazel",
    color = "#89e051",
    cterm_color = "113",
    icon = "",
    name = "Bazel"
  },
  bib = {
    class = "md-bookshelf",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "󱉟",
    name = "BibTeX"
  },
  bmp = {
    class = "seti-image",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Bmp"
  },
  bzl = {
    class = "seti-bazel",
    color = "#89e051",
    cterm_color = "113",
    icon = "",
    name = "Bzl"
  },
  c = {
    class = "custom-c",
    color = "#599eff",
    cterm_color = "111",
    icon = "",
    name = "C"
  },
  ["c++"] = {
    class = "custom-cpp",
    color = "#f34b7d",
    cterm_color = "204",
    icon = "",
    name = "CPlusPlus"
  },
  cbl = {
    class = "seti-config",
    color = "#005ca5",
    cterm_color = "25",
    icon = "",
    name = "Cobol"
  },
  cc = {
    class = "custom-cpp",
    color = "#f34b7d",
    cterm_color = "204",
    icon = "",
    name = "CPlusPlus"
  },
  ccm = {
    class = "custom-cpp",
    color = "#f34b7d",
    cterm_color = "204",
    icon = "",
    name = "CPlusPlusModule"
  },
  cfg = {
    class = "dev-code_badge",
    color = "#ECECEC",
    cterm_color = "255",
    icon = "",
    name = "Configuration"
  },
  cjs = {
    class = "md-language_javascript",
    color = "#F1F134",
    cterm_color = "227",
    icon = "󰌞",
    name = "Cjs"
  },
  clj = {
    class = "dev-clojure",
    color = "#8dc149",
    cterm_color = "113",
    icon = "",
    name = "Clojure"
  },
  cljc = {
    class = "dev-clojure",
    color = "#8dc149",
    cterm_color = "113",
    icon = "",
    name = "ClojureC"
  },
  cljd = {
    class = "dev-clojure_alt",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "ClojureDart"
  },
  cljs = {
    class = "dev-clojure_alt",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "ClojureJS"
  },
  cmake = {
    class = "seti-config",
    color = "#6d8086",
    cterm_color = "66",
    icon = "",
    name = "CMake"
  },
  cob = {
    class = "seti-config",
    color = "#005ca5",
    cterm_color = "25",
    icon = "",
    name = "Cobol"
  },
  cobol = {
    class = "seti-config",
    color = "#005ca5",
    cterm_color = "25",
    icon = "",
    name = "Cobol"
  },
  coffee = {
    class = "seti-coffee",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "Coffee"
  },
  conf = {
    class = "seti-config",
    color = "#6d8086",
    cterm_color = "66",
    icon = "",
    name = "Conf"
  },
  ["config.ru"] = {
    class = "dev-ruby_rough",
    color = "#701516",
    cterm_color = "52",
    icon = "",
    name = "ConfigRu"
  },
  cp = {
    class = "custom-cpp",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Cp"
  },
  cpp = {
    class = "custom-cpp",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Cpp"
  },
  cppm = {
    class = "custom-cpp",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Cppm"
  },
  cpy = {
    class = "seti-config",
    color = "#005ca5",
    cterm_color = "25",
    icon = "",
    name = "Cobol"
  },
  cr = {
    class = "seti-crystal",
    color = "#c8c8c8",
    cterm_color = "251",
    icon = "",
    name = "Crystal"
  },
  cs = {
    class = "md-language_csharp",
    color = "#596706",
    cterm_color = "58",
    icon = "󰌛",
    name = "Cs"
  },
  csh = {
    class = "dev-terminal",
    color = "#4d5a5e",
    cterm_color = "240",
    icon = "",
    name = "Csh"
  },
  cshtml = {
    class = "md-razor_double_edge",
    color = "#512bd4",
    cterm_color = "56",
    icon = "󱦗",
    name = "RazorPage"
  },
  cson = {
    class = "seti-json",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "Cson"
  },
  csproj = {
    class = "md-dot_net",
    color = "#512bd4",
    cterm_color = "56",
    icon = "󰪮",
    name = "CSharpProject"
  },
  css = {
    class = "dev-css3",
    color = "#42a5f5",
    cterm_color = "75",
    icon = "",
    name = "Css"
  },
  csv = {
    class = "seti-csv",
    color = "#89e051",
    cterm_color = "113",
    icon = "",
    name = "Csv"
  },
  cts = {
    class = "seti-typescript",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Cts"
  },
  cu = {
    class = "seti-cu",
    color = "#89e051",
    cterm_color = "113",
    icon = "",
    name = "cuda"
  },
  cuh = {
    class = "seti-cu",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "cudah"
  },
  cxx = {
    class = "custom-cpp",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Cxx"
  },
  cxxm = {
    class = "custom-cpp",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Cxxm"
  },
  d = {
    class = "dev-dlang",
    color = "#427819",
    cterm_color = "28",
    icon = "",
    name = "D"
  },
  dart = {
    class = "dev-dart",
    color = "#03589C",
    cterm_color = "25",
    icon = "",
    name = "Dart"
  },
  db = {
    class = "dev-database",
    color = "#dad8d8",
    cterm_color = "188",
    icon = "",
    name = "Db"
  },
  desktop = {
    class = "fa-desktop",
    color = "#563d7c",
    cterm_color = "54",
    icon = "",
    name = "DesktopEntry"
  },
  diff = {
    class = "dev-git_compare",
    color = "#41535b",
    cterm_color = "239",
    icon = "",
    name = "Diff"
  },
  doc = {
    class = "md-file_word",
    color = "#185abd",
    cterm_color = "26",
    icon = "󰈬",
    name = "Doc"
  },
  docx = {
    class = "md-file_word",
    color = "#185abd",
    cterm_color = "26",
    icon = "󰈬",
    name = "Docx"
  },
  drl = {
    class = "fae-brain",
    color = "#ffafaf",
    cterm_color = "217",
    icon = "",
    name = "Drools"
  },
  dropbox = {
    class = "dev-dropbox",
    color = "#0061FE",
    cterm_color = "27",
    icon = "",
    name = "Dropbox"
  },
  dump = {
    class = "dev-database",
    color = "#dad8d8",
    cterm_color = "188",
    icon = "",
    name = "Dump"
  },
  edn = {
    class = "dev-clojure_alt",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Edn"
  },
  eex = {
    class = "seti-elixir",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Eex"
  },
  ejs = {
    class = "seti-html",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "Ejs"
  },
  elf = {
    class = "cod-file_binary",
    color = "#9F0500",
    cterm_color = "124",
    icon = "",
    name = "Elf"
  },
  elm = {
    class = "seti-elm",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Elm"
  },
  eot = {
    class = "fa-font",
    color = "#ECECEC",
    cterm_color = "255",
    icon = "",
    name = "EmbeddedOpenTypeFont"
  },
  epp = {
    class = "seti-puppet",
    color = "#FFA61A",
    cterm_color = "214",
    icon = "",
    name = "Epp"
  },
  erb = {
    class = "seti-html",
    color = "#701516",
    cterm_color = "52",
    icon = "",
    name = "Erb"
  },
  erl = {
    class = "dev-erlang",
    color = "#B83998",
    cterm_color = "163",
    icon = "",
    name = "Erl"
  },
  ex = {
    class = "seti-elixir",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Ex"
  },
  exe = {
    class = "cod-file_binary",
    color = "#9F0500",
    cterm_color = "124",
    icon = "",
    name = "Exe"
  },
  exs = {
    class = "seti-elixir",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Exs"
  },
  ["f#"] = {
    class = "dev-fsharp",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Fsharp"
  },
  f90 = {
    class = "md-language_fortran",
    color = "#734f96",
    cterm_color = "97",
    icon = "󱈚",
    name = "Fortran"
  },
  fish = {
    class = "dev-terminal",
    color = "#4d5a5e",
    cterm_color = "240",
    icon = "",
    name = "Fish"
  },
  flac = {
    class = "fa-music",
    color = "#66D8EF",
    cterm_color = "45",
    icon = "",
    name = "Flac"
  },
  fnl = {
    class = "custom-fennel",
    color = "#fff3d7",
    cterm_color = "230",
    icon = "",
    name = "Fennel"
  },
  fs = {
    class = "dev-fsharp",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Fs"
  },
  fsi = {
    class = "dev-fsharp",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Fsi"
  },
  fsscript = {
    class = "dev-fsharp",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Fsscript"
  },
  fsx = {
    class = "dev-fsharp",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Fsx"
  },
  gd = {
    class = "seti-config",
    color = "#6d8086",
    cterm_color = "66",
    icon = "",
    name = "GDScript"
  },
  gemspec = {
    class = "dev-ruby_rough",
    color = "#701516",
    cterm_color = "52",
    icon = "",
    name = "Gemspec"
  },
  gif = {
    class = "seti-image",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Gif"
  },
  git = {
    class = "dev-git",
    color = "#F14C28",
    cterm_color = "196",
    icon = "",
    name = "GitLogo"
  },
  glb = {
    class = "fa-cube",
    color = "#FFB13B",
    cterm_color = "214",
    icon = "",
    name = "BinaryGLTF"
  },
  gnumakefile = {
    class = "dev-gnu",
    color = "#6d8086",
    cterm_color = "66",
    icon = "",
    name = "Makefile"
  },
  go = {
    class = "seti-go",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Go"
  },
  godot = {
    class = "dev-code_badge",
    color = "#6d8086",
    cterm_color = "66",
    icon = "",
    name = "GodotProject"
  },
  gql = {
    class = "fa-connectdevelop",
    color = "#e535ab",
    cterm_color = "199",
    icon = "",
    name = "GraphQL"
  },
  graphql = {
    class = "fa-connectdevelop",
    color = "#e535ab",
    cterm_color = "199",
    icon = "",
    name = "GraphQL"
  },
  h = {
    class = "fa-h_square",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "H"
  },
  haml = {
    class = "seti-html",
    color = "#eaeae1",
    cterm_color = "255",
    icon = "",
    name = "Haml"
  },
  hbs = {
    class = "seti-mustache",
    color = "#f0772b",
    cterm_color = "202",
    icon = "",
    name = "Hbs"
  },
  heex = {
    class = "seti-elixir",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Heex"
  },
  hh = {
    class = "fa-h_square",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Hh"
  },
  hpp = {
    class = "fa-h_square",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Hpp"
  },
  hrl = {
    class = "dev-erlang",
    color = "#B83998",
    cterm_color = "163",
    icon = "",
    name = "Hrl"
  },
  hs = {
    class = "seti-haskell",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Hs"
  },
  htm = {
    class = "seti-html",
    color = "#e34c26",
    cterm_color = "196",
    icon = "",
    name = "Htm"
  },
  html = {
    class = "dev-html5",
    color = "#e44d26",
    cterm_color = "196",
    icon = "",
    name = "Html"
  },
  huff = {
    class = "md-chess_knight",
    color = "#4242c7",
    cterm_color = "56",
    icon = "󰡘",
    name = "Huff"
  },
  hurl = {
    class = "fa-exchange",
    color = "#ff0288",
    cterm_color = "198",
    icon = "",
    name = "Hurl"
  },
  hx = {
    class = "seti-haxe",
    color = "#ea8220",
    cterm_color = "208",
    icon = "",
    name = "Haxe"
  },
  hxx = {
    class = "fa-h_square",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Hxx"
  },
  ico = {
    class = "seti-image",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "Ico"
  },
  import = {
    class = "fa-paperclip",
    color = "#ECECEC",
    cterm_color = "255",
    icon = "",
    name = "ImportConfiguration"
  },
  ini = {
    class = "seti-config",
    color = "#6d8086",
    cterm_color = "66",
    icon = "",
    name = "Ini"
  },
  ino = {
    class = "linux-arduino",
    color = "#56b6c2",
    cterm_color = "73",
    icon = "",
    name = "arduino"
  },
  ipynb = {
    class = "seti-python",
    color = "#51a0cf",
    cterm_color = "74",
    icon = "",
    name = "Notebook"
  },
  ixx = {
    class = "custom-cpp",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Ixx"
  },
  java = {
    class = "dev-java",
    color = "#cc3e44",
    cterm_color = "167",
    icon = "",
    name = "Java"
  },
  jl = {
    class = "seti-julia",
    color = "#a270ba",
    cterm_color = "133",
    icon = "",
    name = "Jl"
  },
  jpeg = {
    class = "seti-image",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Jpeg"
  },
  jpg = {
    class = "seti-image",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Jpg"
  },
  js = {
    class = "md-language_javascript",
    color = "#F1F134",
    cterm_color = "227",
    icon = "󰌞",
    name = "Js"
  },
  json = {
    class = "seti-json",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "Json"
  },
  json5 = {
    class = "seti-json",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "Json5"
  },
  jsonc = {
    class = "seti-json",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "Jsonc"
  },
  jsx = {
    class = "seti-react",
    color = "#20c2e3",
    cterm_color = "45",
    icon = "",
    name = "Jsx"
  },
  jxl = {
    class = "seti-image",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "JpegXl"
  },
  ksh = {
    class = "dev-terminal",
    color = "#4d5a5e",
    cterm_color = "240",
    icon = "",
    name = "Ksh"
  },
  kt = {
    class = "seti-kotlin",
    color = "#7F52FF",
    cterm_color = "99",
    icon = "",
    name = "Kotlin"
  },
  kts = {
    class = "seti-kotlin",
    color = "#7F52FF",
    cterm_color = "99",
    icon = "",
    name = "KotlinScript"
  },
  leex = {
    class = "seti-elixir",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Leex"
  },
  less = {
    class = "seti-css",
    color = "#563d7c",
    cterm_color = "54",
    icon = "",
    name = "Less"
  },
  lhs = {
    class = "seti-haskell",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Lhs"
  },
  license = {
    class = "seti-license",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "License"
  },
  liquid = {
    class = "seti-liquid",
    color = "#95BF47",
    cterm_color = "106",
    icon = "",
    name = "Liquid"
  },
  lock = {
    class = "fa-unlock_alt",
    color = "#bbbbbb",
    cterm_color = "250",
    icon = "",
    name = "Lock"
  },
  log = {
    class = "md-library",
    color = "#dddddd",
    cterm_color = "253",
    icon = "󰌱",
    name = "Log"
  },
  lua = {
    class = "seti-lua",
    color = "#51a0cf",
    cterm_color = "74",
    icon = "",
    name = "Lua"
  },
  luau = {
    class = "seti-lua",
    color = "#00a2ff",
    cterm_color = "75",
    icon = "",
    name = "Luau"
  },
  m4a = {
    class = "fa-music",
    color = "#66D8EF",
    cterm_color = "45",
    icon = "",
    name = "M4A"
  },
  m4v = {
    class = "fa-video_camera",
    color = "#FD971F",
    cterm_color = "208",
    icon = "",
    name = "M4V"
  },
  makefile = {
    class = "dev-gnu",
    color = "#6d8086",
    cterm_color = "66",
    icon = "",
    name = "Makefile"
  },
  markdown = {
    class = "seti-markdown",
    color = "#dddddd",
    cterm_color = "253",
    icon = "",
    name = "Markdown"
  },
  material = {
    class = "md-image_filter_hdr",
    color = "#B83998",
    cterm_color = "163",
    icon = "󰔉",
    name = "Material"
  },
  md = {
    class = "oct-markdown",
    color = "#dddddd",
    cterm_color = "253",
    icon = "",
    name = "Md"
  },
  mdx = {
    class = "oct-markdown",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Mdx"
  },
  mint = {
    class = "md-leaf",
    color = "#87c095",
    cterm_color = "108",
    icon = "󰌪",
    name = "Mint"
  },
  mjs = {
    class = "md-language_javascript",
    color = "#F1F134",
    cterm_color = "227",
    icon = "󰌞",
    name = "Mjs"
  },
  mk = {
    class = "dev-gnu",
    color = "#6d8086",
    cterm_color = "66",
    icon = "",
    name = "Makefile"
  },
  mkv = {
    class = "fa-video_camera",
    color = "#FD971F",
    cterm_color = "208",
    icon = "",
    name = "Mkv"
  },
  ml = {
    class = "seti-ocaml",
    color = "#e37933",
    cterm_color = "166",
    icon = "",
    name = "Ml"
  },
  mli = {
    class = "seti-ocaml",
    color = "#e37933",
    cterm_color = "166",
    icon = "",
    name = "Mli"
  },
  mo = {
    class = "md-infinity",
    color = "#9772FB",
    cterm_color = "135",
    icon = "󰛤",
    name = "Motoko"
  },
  mov = {
    class = "fa-video_camera",
    color = "#FD971F",
    cterm_color = "208",
    icon = "",
    name = "MOV"
  },
  mp3 = {
    class = "fa-music",
    color = "#66D8EF",
    cterm_color = "45",
    icon = "",
    name = "Mp3"
  },
  mp4 = {
    class = "fa-video_camera",
    color = "#FD971F",
    cterm_color = "208",
    icon = "",
    name = "Mp4"
  },
  mpp = {
    class = "custom-cpp",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Mpp"
  },
  mts = {
    class = "seti-typescript",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Mts"
  },
  mustache = {
    class = "seti-mustache",
    color = "#e37933",
    cterm_color = "166",
    icon = "",
    name = "Mustache"
  },
  nim = {
    class = "seti-nim",
    color = "#f3d400",
    cterm_color = "220",
    icon = "",
    name = "Nim"
  },
  nix = {
    class = "linux-nixos",
    color = "#7ebae4",
    cterm_color = "110",
    icon = "",
    name = "Nix"
  },
  nswag = {
    class = "seti-json",
    color = "#85ea2d",
    cterm_color = "112",
    icon = "",
    name = "Nswag"
  },
  nu = {
    class = "fa-chevron_right",
    color = "#3aa675",
    cterm_color = "36",
    icon = "",
    name = "Nushell"
  },
  ogg = {
    class = "fa-music",
    color = "#66D8EF",
    cterm_color = "45",
    icon = "",
    name = "Ogg"
  },
  opus = {
    class = "md-file_music",
    color = "#F88A02",
    cterm_color = "208",
    icon = "󰈣",
    name = "OPUS"
  },
  org = {
    class = "custom-orgmode",
    color = "#77AA99",
    cterm_color = "73",
    icon = "",
    name = "OrgMode"
  },
  otf = {
    class = "fa-font",
    color = "#ECECEC",
    cterm_color = "255",
    icon = "",
    name = "OpenTypeFont"
  },
  out = {
    class = "cod-file_binary",
    color = "#9F0500",
    cterm_color = "124",
    icon = "",
    name = "Out"
  },
  pck = {
    class = "oct-package",
    color = "#6d8086",
    cterm_color = "66",
    icon = "",
    name = "PackedResource"
  },
  pdf = {
    class = "cod-file_pdf",
    color = "#b30b00",
    cterm_color = "124",
    icon = "",
    name = "Pdf"
  },
  php = {
    class = "seti-php",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Php"
  },
  pl = {
    class = "dev-perl",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Pl"
  },
  pm = {
    class = "dev-perl",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Pm"
  },
  png = {
    class = "seti-image",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Png"
  },
  pp = {
    class = "seti-puppet",
    color = "#FFA61A",
    cterm_color = "214",
    icon = "",
    name = "Pp"
  },
  ppt = {
    class = "md-file_powerpoint",
    color = "#cb4a32",
    cterm_color = "160",
    icon = "󰈧",
    name = "Ppt"
  },
  prisma = {
    class = "seti-prisma",
    color = "#5a67d8",
    cterm_color = "62",
    icon = "",
    name = "Prisma"
  },
  pro = {
    class = "dev-prolog",
    color = "#e4b854",
    cterm_color = "179",
    icon = "",
    name = "Prolog"
  },
  ps1 = {
    class = "md-powershell",
    color = "#4273ca",
    cterm_color = "68",
    icon = "󰨊",
    name = "PsScriptfile"
  },
  psb = {
    class = "dev-photoshop",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Psb"
  },
  psd = {
    class = "dev-photoshop",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Psd"
  },
  psd1 = {
    class = "md-powershell",
    color = "#6975c4",
    cterm_color = "68",
    icon = "󰨊",
    name = "PsManifestfile"
  },
  psm1 = {
    class = "md-powershell",
    color = "#6975c4",
    cterm_color = "68",
    icon = "󰨊",
    name = "PsScriptModulefile"
  },
  pxd = {
    class = "seti-python",
    color = "#5aa7e4",
    cterm_color = "39",
    icon = "",
    name = "Pxd"
  },
  pxi = {
    class = "seti-python",
    color = "#5aa7e4",
    cterm_color = "39",
    icon = "",
    name = "Pxi"
  },
  py = {
    class = "seti-python",
    color = "#ffbc03",
    cterm_color = "214",
    icon = "",
    name = "Py"
  },
  pyc = {
    class = "seti-python",
    color = "#ffe291",
    cterm_color = "222",
    icon = "",
    name = "Pyc"
  },
  pyd = {
    class = "seti-python",
    color = "#ffe291",
    cterm_color = "222",
    icon = "",
    name = "Pyd"
  },
  pyi = {
    class = "seti-python",
    color = "#ffbc03",
    cterm_color = "214",
    icon = "",
    name = "Pyi"
  },
  pyo = {
    class = "seti-python",
    color = "#ffe291",
    cterm_color = "222",
    icon = "",
    name = "Pyo"
  },
  pyx = {
    class = "seti-python",
    color = "#5aa7e4",
    cterm_color = "39",
    icon = "",
    name = "Pyx"
  },
  query = {
    class = "fae-tree",
    color = "#90a850",
    cterm_color = "107",
    icon = "",
    name = "Query"
  },
  r = {
    class = "md-language_r",
    color = "#2266ba",
    cterm_color = "25",
    icon = "󰟔",
    name = "R"
  },
  rake = {
    class = "dev-ruby_rough",
    color = "#701516",
    cterm_color = "52",
    icon = "",
    name = "Rake"
  },
  razor = {
    class = "md-razor_single_edge",
    color = "#512bd4",
    cterm_color = "56",
    icon = "󱦘",
    name = "RazorPage"
  },
  rb = {
    class = "dev-ruby_rough",
    color = "#701516",
    cterm_color = "52",
    icon = "",
    name = "Rb"
  },
  res = {
    class = "seti-rescript",
    color = "#cc3e44",
    cterm_color = "167",
    icon = "",
    name = "ReScript"
  },
  resi = {
    class = "seti-rescript",
    color = "#f55385",
    cterm_color = "204",
    icon = "",
    name = "ReScriptInterface"
  },
  rlib = {
    class = "dev-rust",
    color = "#dea584",
    cterm_color = "216",
    icon = "",
    name = "Rlib"
  },
  rmd = {
    class = "seti-markdown",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Rmd"
  },
  rproj = {
    class = "md-vector_rectangle",
    color = "#358a5b",
    cterm_color = "29",
    icon = "󰗆",
    name = "Rproj"
  },
  rs = {
    class = "seti-rust",
    color = "#dea584",
    cterm_color = "216",
    icon = "",
    name = "Rs"
  },
  rss = {
    class = "seti-xml",
    color = "#FB9D3B",
    cterm_color = "215",
    icon = "",
    name = "Rss"
  },
  sass = {
    class = "seti-sass",
    color = "#f55385",
    cterm_color = "204",
    icon = "",
    name = "Sass"
  },
  sbt = {
    class = "dev-scala",
    color = "#cc3e44",
    cterm_color = "167",
    icon = "",
    name = "sbt"
  },
  scad = {
    class = "linux-openscad",
    color = "#f9d72c",
    cterm_color = "220",
    icon = "",
    name = "OpenSCAD"
  },
  scala = {
    class = "dev-scala",
    color = "#cc3e44",
    cterm_color = "167",
    icon = "",
    name = "Scala"
  },
  scm = {
    class = "md-lambda",
    color = "#eeeeee",
    cterm_color = "255",
    icon = "󰘧",
    name = "Scheme"
  },
  scss = {
    class = "seti-sass",
    color = "#f55385",
    cterm_color = "204",
    icon = "",
    name = "Scss"
  },
  sh = {
    class = "dev-terminal",
    color = "#4d5a5e",
    cterm_color = "240",
    icon = "",
    name = "Sh"
  },
  sig = {
    class = "md-lambda",
    color = "#e37933",
    cterm_color = "166",
    icon = "󰘧",
    name = "Sig"
  },
  slim = {
    class = "seti-html",
    color = "#e34c26",
    cterm_color = "196",
    icon = "",
    name = "Slim"
  },
  sln = {
    class = "dev-visualstudio",
    color = "#854CC7",
    cterm_color = "98",
    icon = "",
    name = "Sln"
  },
  sml = {
    class = "md-lambda",
    color = "#e37933",
    cterm_color = "166",
    icon = "󰘧",
    name = "Sml"
  },
  sol = {
    class = "seti-ethereum",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Solidity"
  },
  ["spec.js"] = {
    class = "oct-beaker",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "SpecJs"
  },
  ["spec.jsx"] = {
    class = "oct-beaker",
    color = "#20c2e3",
    cterm_color = "45",
    icon = "",
    name = "JavaScriptReactSpec"
  },
  ["spec.ts"] = {
    class = "oct-beaker",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "SpecTs"
  },
  ["spec.tsx"] = {
    class = "oct-beaker",
    color = "#1354bf",
    cterm_color = "26",
    icon = "",
    name = "TypeScriptReactSpec"
  },
  sql = {
    class = "dev-database",
    color = "#dad8d8",
    cterm_color = "188",
    icon = "",
    name = "Sql"
  },
  sqlite = {
    class = "dev-database",
    color = "#dad8d8",
    cterm_color = "188",
    icon = "",
    name = "Sql"
  },
  sqlite3 = {
    class = "dev-database",
    color = "#dad8d8",
    cterm_color = "188",
    icon = "",
    name = "Sql"
  },
  styl = {
    class = "seti-stylus",
    color = "#8dc149",
    cterm_color = "113",
    icon = "",
    name = "Styl"
  },
  sublime = {
    class = "dev-sublime",
    color = "#e37933",
    cterm_color = "166",
    icon = "",
    name = "Suo"
  },
  suo = {
    class = "dev-visualstudio",
    color = "#854CC7",
    cterm_color = "98",
    icon = "",
    name = "Suo"
  },
  sv = {
    class = "md-memory",
    color = "#019833",
    cterm_color = "28",
    icon = "󰍛",
    name = "SystemVerilog"
  },
  svelte = {
    class = "seti-svelte",
    color = "#ff3e00",
    cterm_color = "196",
    icon = "",
    name = "Svelte"
  },
  svg = {
    class = "md-svg",
    color = "#FFB13B",
    cterm_color = "214",
    icon = "󰜡",
    name = "Svg"
  },
  svh = {
    class = "md-memory",
    color = "#019833",
    cterm_color = "28",
    icon = "󰍛",
    name = "SystemVerilog"
  },
  swift = {
    class = "dev-swift",
    color = "#e37933",
    cterm_color = "166",
    icon = "",
    name = "Swift"
  },
  t = {
    class = "dev-perl",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Tor"
  },
  tbc = {
    class = "md-feather",
    color = "#1e5cb3",
    cterm_color = "25",
    icon = "󰛓",
    name = "Tcl"
  },
  tcl = {
    class = "md-feather",
    color = "#1e5cb3",
    cterm_color = "25",
    icon = "󰛓",
    name = "Tcl"
  },
  templ = {
    class = "cod-code",
    color = "#dbbd30",
    cterm_color = "178",
    icon = "",
    name = "Templ"
  },
  terminal = {
    class = "oct-terminal",
    color = "#31B53E",
    cterm_color = "34",
    icon = "",
    name = "Terminal"
  },
  ["test.js"] = {
    class = "oct-beaker",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "TestJs"
  },
  ["test.jsx"] = {
    class = "oct-beaker",
    color = "#20c2e3",
    cterm_color = "45",
    icon = "",
    name = "JavaScriptReactTest"
  },
  ["test.ts"] = {
    class = "oct-beaker",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "TestTs"
  },
  ["test.tsx"] = {
    class = "oct-beaker",
    color = "#1354bf",
    cterm_color = "26",
    icon = "",
    name = "TypeScriptReactTest"
  },
  tex = {
    class = "md-text_shadow",
    color = "#3D6117",
    cterm_color = "22",
    icon = "󰙩",
    name = "Tex"
  },
  tf = {
    class = "seti-terraform",
    color = "#5F43E9",
    cterm_color = "93",
    icon = "",
    name = "Terraform"
  },
  tfvars = {
    class = "fa-file",
    color = "#5F43E9",
    cterm_color = "93",
    icon = "",
    name = "TFVars"
  },
  toml = {
    class = "custom-toml",
    color = "#9c4221",
    cterm_color = "124",
    icon = "",
    name = "Toml"
  },
  tres = {
    class = "dev-database",
    color = "#cbcb41",
    cterm_color = "185",
    icon = "",
    name = "TextResource"
  },
  ts = {
    class = "seti-typescript",
    color = "#519aba",
    cterm_color = "74",
    icon = "",
    name = "Ts"
  },
  tscn = {
    class = "md-movie",
    color = "#a074c4",
    cterm_color = "140",
    icon = "󰎁",
    name = "TextScene"
  },
  tsx = {
    class = "dev-react",
    color = "#1354bf",
    cterm_color = "26",
    icon = "",
    name = "Tsx"
  },
  ttf = {
    class = "fa-font",
    color = "#ECECEC",
    cterm_color = "255",
    icon = "",
    name = "TrueTypeFont"
  },
  twig = {
    class = "seti-twig",
    color = "#8dc149",
    cterm_color = "113",
    icon = "",
    name = "Twig"
  },
  txt = {
    class = "md-file_document",
    color = "#89e051",
    cterm_color = "113",
    icon = "󰈙",
    name = "Txt"
  },
  v = {
    class = "md-memory",
    color = "#019833",
    cterm_color = "28",
    icon = "󰍛",
    name = "Verilog"
  },
  vala = {
    class = "seti-vala",
    color = "#7239b3",
    cterm_color = "91",
    icon = "",
    name = "Vala"
  },
  vh = {
    class = "md-memory",
    color = "#019833",
    cterm_color = "28",
    icon = "󰍛",
    name = "Verilog"
  },
  vhd = {
    class = "md-memory",
    color = "#019833",
    cterm_color = "28",
    icon = "󰍛",
    name = "VHDL"
  },
  vhdl = {
    class = "md-memory",
    color = "#019833",
    cterm_color = "28",
    icon = "󰍛",
    name = "VHDL"
  },
  vim = {
    class = "custom-vim",
    color = "#019833",
    cterm_color = "28",
    icon = "",
    name = "Vim"
  },
  vsh = {
    class = "custom-v_lang",
    color = "#5d87bf",
    cterm_color = "67",
    icon = "",
    name = "Vlang"
  },
  vue = {
    class = "seti-vue",
    color = "#8dc149",
    cterm_color = "113",
    icon = "",
    name = "Vue"
  },
  wasm = {
    class = "seti-wasm",
    color = "#5c4cdb",
    cterm_color = "62",
    icon = "",
    name = "Wasm"
  },
  wav = {
    class = "fa-music",
    color = "#66D8EF",
    cterm_color = "45",
    icon = "",
    name = "Wav"
  },
  webm = {
    class = "fa-video_camera",
    color = "#FD971F",
    cterm_color = "208",
    icon = "",
    name = "Webm"
  },
  webmanifest = {
    class = "seti-json",
    color = "#f1e05a",
    cterm_color = "185",
    icon = "",
    name = "Webmanifest"
  },
  webp = {
    class = "seti-image",
    color = "#a074c4",
    cterm_color = "140",
    icon = "",
    name = "Webp"
  },
  webpack = {
    class = "md-webpack",
    color = "#519aba",
    cterm_color = "74",
    icon = "󰜫",
    name = "Webpack"
  },
  woff = {
    class = "fa-font",
    color = "#ECECEC",
    cterm_color = "255",
    icon = "",
    name = "WebOpenFontFormat"
  },
  woff2 = {
    class = "fa-font",
    color = "#ECECEC",
    cterm_color = "255",
    icon = "",
    name = "WebOpenFontFormat"
  },
  xaml = {
    class = "md-language_xaml",
    color = "#512bd4",
    cterm_color = "56",
    icon = "󰙳",
    name = "Xaml"
  },
  xcplayground = {
    class = "dev-swift",
    color = "#e37933",
    cterm_color = "166",
    icon = "",
    name = "XcPlayground"
  },
  xls = {
    class = "md-file_excel",
    color = "#207245",
    cterm_color = "29",
    icon = "󰈛",
    name = "Xls"
  },
  xlsx = {
    class = "md-file_excel",
    color = "#207245",
    cterm_color = "29",
    icon = "󰈛",
    name = "Xlsx"
  },
  xml = {
    class = "md-xml",
    color = "#e37933",
    cterm_color = "166",
    icon = "󰗀",
    name = "Xml"
  },
  xul = {
    class = "dev-firefox",
    color = "#e37933",
    cterm_color = "166",
    icon = "",
    name = "Xul"
  },
  yaml = {
    class = "seti-config",
    color = "#6d8086",
    cterm_color = "66",
    icon = "",
    name = "Yaml"
  },
  yml = {
    class = "seti-config",
    color = "#6d8086",
    cterm_color = "66",
    icon = "",
    name = "Yml"
  },
  zig = {
    class = "seti-zig",
    color = "#f69a1b",
    cterm_color = "172",
    icon = "",
    name = "Zig"
  },
  zsh = {
    class = "dev-terminal",
    color = "#89e051",
    cterm_color = "113",
    icon = "",
    name = "Zsh"
  }
}

M.icons_by_operating_system = {
  alma = {
    class = "linux-almalinux",
    color = "#ff4649",
    cterm_color = "203",
    icon = "",
    name = "Almalinux"
  },
  alpine = {
    class = "linux-alpine",
    color = "#0d597f",
    cterm_color = "24",
    icon = "",
    name = "Alpine"
  },
  aosc = {
    class = "linux-aosc",
    color = "#c00000",
    cterm_color = "124",
    icon = "",
    name = "AOSC"
  },
  apple = {
    class = "seti-apple",
    color = "#A2AAAD",
    cterm_color = "248",
    icon = "",
    name = "Apple"
  },
  arch = {
    class = "md-arch",
    color = "#0f94d2",
    cterm_color = "67",
    icon = "󰣇",
    name = "Arch"
  },
  artix = {
    class = "linux-artix",
    color = "#41b4d7",
    cterm_color = "38",
    icon = "",
    name = "Artix"
  },
  budgie = {
    class = "linux-budgie",
    color = "#5195e3",
    cterm_color = "68",
    icon = "",
    name = "Budgie"
  },
  centos = {
    class = "linux-centos",
    color = "#a2518d",
    cterm_color = "132",
    icon = "",
    name = "Centos"
  },
  debian = {
    class = "linux-debian",
    color = "#a80030",
    cterm_color = "88",
    icon = "",
    name = "Debian"
  },
  deepin = {
    class = "linux-deepin",
    color = "#2ca7f8",
    cterm_color = "39",
    icon = "",
    name = "Deepin"
  },
  devuan = {
    class = "linux-devuan",
    color = "#404a52",
    cterm_color = "238",
    icon = "",
    name = "Devuan"
  },
  elementary = {
    class = "linux-elementary",
    color = "#5890c2",
    cterm_color = "67",
    icon = "",
    name = "Elementary"
  },
  endeavour = {
    class = "linux-endeavour",
    color = "#7b3db9",
    cterm_color = "91",
    icon = "",
    name = "Endeavour"
  },
  fedora = {
    class = "linux-fedora",
    color = "#072a5e",
    cterm_color = "17",
    icon = "",
    name = "Fedora"
  },
  freebsd = {
    class = "linux-freebsd",
    color = "#c90f02",
    cterm_color = "160",
    icon = "",
    name = "FreeBSD"
  },
  gentoo = {
    class = "md-gentoo",
    color = "#b1abce",
    cterm_color = "146",
    icon = "󰣨",
    name = "Gentoo"
  },
  guix = {
    class = "linux-gnu_guix",
    color = "#ffcc00",
    cterm_color = "220",
    icon = "",
    name = "Guix"
  },
  illumos = {
    class = "linux-illumos",
    color = "#ff430f",
    cterm_color = "196",
    icon = "",
    name = "Illumos"
  },
  kali = {
    class = "linux-kali_linux",
    color = "#2777ff",
    cterm_color = "69",
    icon = "",
    name = "Kali"
  },
  linux = {
    class = "cod-terminal_linux",
    color = "#fdfdfb",
    cterm_color = "231",
    icon = "",
    name = "Linux"
  },
  mageia = {
    class = "linux-mageia",
    color = "#2397d4",
    cterm_color = "67",
    icon = "",
    name = "Mageia"
  },
  manjaro = {
    class = "linux-manjaro",
    color = "#33b959",
    cterm_color = "35",
    icon = "",
    name = "Manjaro"
  },
  mint = {
    class = "md-linux_mint",
    color = "#66af3d",
    cterm_color = "70",
    icon = "󰣭",
    name = "Mint"
  },
  nixos = {
    class = "linux-nixos",
    color = "#7ab1db",
    cterm_color = "110",
    icon = "",
    name = "NixOS"
  },
  openbsd = {
    class = "linux-openbsd",
    color = "#f2ca30",
    cterm_color = "220",
    icon = "",
    name = "OpenBSD"
  },
  opensuse = {
    class = "linux-opensuse",
    color = "#6fb424",
    cterm_color = "70",
    icon = "",
    name = "openSUSE"
  },
  parrot = {
    class = "linux-parrot",
    color = "#54deff",
    cterm_color = "45",
    icon = "",
    name = "Parrot"
  },
  pop_os = {
    class = "linux-pop_os",
    color = "#48b9c7",
    cterm_color = "73",
    icon = "",
    name = "Pop_OS"
  },
  raspberry_pi = {
    class = "linux-raspberry_pi",
    color = "#be1848",
    cterm_color = "161",
    icon = "",
    name = "RaspberryPiOS"
  },
  redhat = {
    class = "md-redhat",
    color = "#EE0000",
    cterm_color = "196",
    icon = "󱄛",
    name = "Redhat"
  },
  rocky = {
    class = "linux-rocky_linux",
    color = "#0fb37d",
    cterm_color = "36",
    icon = "",
    name = "RockyLinux"
  },
  sabayon = {
    class = "linux-sabayon",
    color = "#c6c6c6",
    cterm_color = "251",
    icon = "",
    name = "Sabayon"
  },
  slackware = {
    class = "linux-slackware",
    color = "#475fa9",
    cterm_color = "61",
    icon = "",
    name = "Slackware"
  },
  solus = {
    class = "linux-solus",
    color = "#4b5163",
    cterm_color = "239",
    icon = "",
    name = "Solus"
  },
  ubuntu = {
    class = "dev-ubuntu",
    color = "#dd4814",
    cterm_color = "196",
    icon = "",
    name = "Ubuntu"
  },
  void = {
    class = "linux-void",
    color = "#295340",
    cterm_color = "23",
    icon = "",
    name = "Void"
  },
  windows = {
    class = "fa-windows",
    color = "#00A4EF",
    cterm_color = "39",
    icon = "",
    name = "Windows"
  },
  zorin = {
    class = "linux-zorin",
    color = "#14a1e8",
    cterm_color = "39",
    icon = "",
    name = "Zorin"
  }
}

return M
