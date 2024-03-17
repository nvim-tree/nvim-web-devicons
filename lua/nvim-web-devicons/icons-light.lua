local M = {}

M.icons_by_filename = {
  [".babelrc"] = {
    class = "seti-less",
    color = "#666620",
    cterm_color = "58",
    icon = "",
    name = "Babelrc"
  },
  [".bash_profile"] = {
    class = "seti-config",
    color = "#447028",
    cterm_color = "22",
    icon = "",
    name = "BashProfile"
  },
  [".bashrc"] = {
    class = "seti-config",
    color = "#447028",
    cterm_color = "22",
    icon = "",
    name = "Bashrc"
  },
  [".dockerignore"] = {
    class = "md-docker",
    color = "#2e5f99",
    cterm_color = "25",
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
    color = "#333030",
    cterm_color = "236",
    icon = "",
    name = "EditorConfig"
  },
  [".env"] = {
    class = "oct-sliders",
    color = "#32310d",
    cterm_color = "236",
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
    color = "#aa321f",
    cterm_color = "124",
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
    color = "#017226",
    cterm_color = "22",
    icon = "",
    name = "Gvimrc"
  },
  [".luaurc"] = {
    class = "seti-config",
    color = "#007abf",
    cterm_color = "32",
    icon = "",
    name = "Luaurc"
  },
  [".npmignore"] = {
    class = "dev-npm",
    color = "#ae1d38",
    cterm_color = "161",
    icon = "",
    name = "NPMIgnore"
  },
  [".npmrc"] = {
    class = "dev-npm",
    color = "#ae1d38",
    cterm_color = "161",
    icon = "",
    name = "NPMrc"
  },
  [".prettierrc"] = {
    class = "custom-prettier",
    color = "#3264b7",
    cterm_color = "25",
    icon = "",
    name = "PrettierConfig"
  },
  [".settings.json"] = {
    class = "dev-visualstudio",
    color = "#643995",
    cterm_color = "91",
    icon = "",
    name = "SettingsJson"
  },
  [".vimrc"] = {
    class = "custom-vim",
    color = "#017226",
    cterm_color = "22",
    icon = "",
    name = "Vimrc"
  },
  [".zprofile"] = {
    class = "seti-config",
    color = "#447028",
    cterm_color = "22",
    icon = "",
    name = "Zshprofile"
  },
  [".zshenv"] = {
    class = "seti-config",
    color = "#447028",
    cterm_color = "22",
    icon = "",
    name = "Zshenv"
  },
  [".zshrc"] = {
    class = "seti-config",
    color = "#447028",
    cterm_color = "22",
    icon = "",
    name = "Zshrc"
  },
  R = {
    class = "md-language_r",
    color = "#1a4c8c",
    cterm_color = "25",
    icon = "󰟔",
    name = "R"
  },
  _gvimrc = {
    class = "custom-vim",
    color = "#017226",
    cterm_color = "22",
    icon = "",
    name = "Gvimrc"
  },
  _vimrc = {
    class = "custom-vim",
    color = "#017226",
    cterm_color = "22",
    icon = "",
    name = "Vimrc"
  },
  avif = {
    class = "seti-image",
    color = "#6b4d83",
    cterm_color = "96",
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
    color = "#447028",
    cterm_color = "22",
    icon = "",
    name = "BazelBuild"
  },
  ["build.zig.zon"] = {
    class = "seti-zig",
    color = "#7b4d0e",
    cterm_color = "94",
    icon = "",
    name = "ZigObjectNotation"
  },
  checkhealth = {
    class = "md-stethoscope",
    color = "#3a5a7e",
    cterm_color = "24",
    icon = "󰓙",
    name = "Checkhealth"
  },
  ["cmakelists.txt"] = {
    class = "seti-config",
    color = "#526064",
    cterm_color = "59",
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
    color = "#2e5f99",
    cterm_color = "25",
    icon = "󰡨",
    name = "Dockerfile"
  },
  ["compose.yml"] = {
    class = "md-docker",
    color = "#2e5f99",
    cterm_color = "25",
    icon = "󰡨",
    name = "Dockerfile"
  },
  containerfile = {
    class = "md-docker",
    color = "#2e5f99",
    cterm_color = "25",
    icon = "󰡨",
    name = "Dockerfile"
  },
  copying = {
    class = "seti-license",
    color = "#666620",
    cterm_color = "58",
    icon = "",
    name = "License"
  },
  ["copying.lesser"] = {
    class = "seti-license",
    color = "#666620",
    cterm_color = "58",
    icon = "",
    name = "License"
  },
  ["docker-compose.yaml"] = {
    class = "md-docker",
    color = "#2e5f99",
    cterm_color = "25",
    icon = "󰡨",
    name = "Dockerfile"
  },
  ["docker-compose.yml"] = {
    class = "md-docker",
    color = "#2e5f99",
    cterm_color = "25",
    icon = "󰡨",
    name = "Dockerfile"
  },
  dockerfile = {
    class = "md-docker",
    color = "#2e5f99",
    cterm_color = "25",
    icon = "󰡨",
    name = "Dockerfile"
  },
  ["favicon.ico"] = {
    class = "seti-favicon",
    color = "#666620",
    cterm_color = "58",
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
    color = "#526064",
    cterm_color = "59",
    icon = "",
    name = "Makefile"
  },
  groovy = {
    class = "dev-groovy",
    color = "#384e5d",
    cterm_color = "239",
    icon = "",
    name = "Groovy"
  },
  gruntfile = {
    class = "seti-grunt",
    color = "#975122",
    cterm_color = "130",
    icon = "",
    name = "Gruntfile"
  },
  gulpfile = {
    class = "seti-gulp",
    color = "#992e33",
    cterm_color = "88",
    icon = "",
    name = "Gulpfile"
  },
  license = {
    class = "seti-license",
    color = "#686020",
    cterm_color = "58",
    icon = "",
    name = "License"
  },
  makefile = {
    class = "dev-gnu",
    color = "#526064",
    cterm_color = "59",
    icon = "",
    name = "Makefile"
  },
  ["mix.lock"] = {
    class = "seti-elixir",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "MixLock"
  },
  node_modules = {
    class = "dev-nodejs_small",
    color = "#ae1d38",
    cterm_color = "161",
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
    color = "#ae1d38",
    cterm_color = "161",
    icon = "",
    name = "PackageJson"
  },
  procfile = {
    class = "seti-heroku",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Procfile"
  },
  ["py.typed"] = {
    class = "seti-python",
    color = "#805e02",
    cterm_color = "94",
    icon = "",
    name = "Py.typed"
  },
  r = {
    class = "md-language_r",
    color = "#1a4c8c",
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
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Rmd"
  },
  ["svelte.config.js"] = {
    class = "seti-svelte",
    color = "#bf2e00",
    cterm_color = "160",
    icon = "",
    name = "SvelteConfig"
  },
  ["tailwind.config.js"] = {
    class = "md-tailwind",
    color = "#158197",
    cterm_color = "31",
    icon = "󱏿",
    name = "TailwindConfig"
  },
  ["tailwind.config.mjs"] = {
    class = "md-tailwind",
    color = "#158197",
    cterm_color = "31",
    icon = "󱏿",
    name = "TailwindConfig"
  },
  ["tailwind.config.ts"] = {
    class = "md-tailwind",
    color = "#158197",
    cterm_color = "31",
    icon = "󱏿",
    name = "TailwindConfig"
  },
  ["tsconfig.json"] = {
    class = "seti-tsconfig",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "TSConfig"
  },
  unlicense = {
    class = "seti-license",
    color = "#686020",
    cterm_color = "58",
    icon = "",
    name = "License"
  },
  ["vagrantfile$"] = {
    class = "fa-linode",
    color = "#104abf",
    cterm_color = "26",
    icon = "",
    name = "Vagrantfile"
  },
  webpack = {
    class = "md-webpack",
    color = "#36677c",
    cterm_color = "24",
    icon = "󰜫",
    name = "Webpack"
  },
  workspace = {
    class = "seti-bazel",
    color = "#447028",
    cterm_color = "22",
    icon = "",
    name = "BazelWorkspace"
  }
}

M.icons_by_file_extension = {
  Dockerfile = {
    class = "md-docker",
    color = "#2e5f99",
    cterm_color = "25",
    icon = "󰡨",
    name = "Dockerfile"
  },
  R = {
    class = "md-language_r",
    color = "#1a4c8c",
    cterm_color = "25",
    icon = "󰟔",
    name = "R"
  },
  aac = {
    class = "fa-music",
    color = "#336c78",
    cterm_color = "23",
    icon = "",
    name = "Aac"
  },
  ai = {
    class = "dev-illustrator",
    color = "#666620",
    cterm_color = "58",
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
    color = "#526064",
    cterm_color = "59",
    icon = "",
    name = "AppleScript"
  },
  awk = {
    class = "dev-terminal",
    color = "#3a4446",
    cterm_color = "238",
    icon = "",
    name = "Awk"
  },
  azcli = {
    class = "cod-azure_devops",
    color = "#005a9f",
    cterm_color = "25",
    icon = "",
    name = "AzureCli"
  },
  bak = {
    class = "md-backup_restore",
    color = "#526064",
    cterm_color = "59",
    icon = "󰁯",
    name = "Backup"
  },
  bash = {
    class = "dev-terminal",
    color = "#447028",
    cterm_color = "22",
    icon = "",
    name = "Bash"
  },
  bat = {
    class = "seti-config",
    color = "#40500f",
    cterm_color = "58",
    icon = "",
    name = "Bat"
  },
  bazel = {
    class = "seti-bazel",
    color = "#447028",
    cterm_color = "22",
    icon = "",
    name = "Bazel"
  },
  bib = {
    class = "md-bookshelf",
    color = "#666620",
    cterm_color = "58",
    icon = "󱉟",
    name = "BibTeX"
  },
  bmp = {
    class = "seti-image",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Bmp"
  },
  bzl = {
    class = "seti-bazel",
    color = "#447028",
    cterm_color = "22",
    icon = "",
    name = "Bzl"
  },
  c = {
    class = "custom-c",
    color = "#3b69aa",
    cterm_color = "25",
    icon = "",
    name = "C"
  },
  ["c++"] = {
    class = "custom-cpp",
    color = "#a23253",
    cterm_color = "125",
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
    color = "#a23253",
    cterm_color = "125",
    icon = "",
    name = "CPlusPlus"
  },
  ccm = {
    class = "custom-cpp",
    color = "#a23253",
    cterm_color = "125",
    icon = "",
    name = "CPlusPlusModule"
  },
  cfg = {
    class = "dev-code_badge",
    color = "#2f2f2f",
    cterm_color = "236",
    icon = "",
    name = "Configuration"
  },
  cjs = {
    class = "md-language_javascript",
    color = "#505011",
    cterm_color = "58",
    icon = "󰌞",
    name = "Cjs"
  },
  clj = {
    class = "dev-clojure",
    color = "#466024",
    cterm_color = "22",
    icon = "",
    name = "Clojure"
  },
  cljc = {
    class = "dev-clojure",
    color = "#466024",
    cterm_color = "22",
    icon = "",
    name = "ClojureC"
  },
  cljd = {
    class = "dev-clojure_alt",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "ClojureDart"
  },
  cljs = {
    class = "dev-clojure_alt",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "ClojureJS"
  },
  cmake = {
    class = "seti-config",
    color = "#526064",
    cterm_color = "59",
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
    color = "#666620",
    cterm_color = "58",
    icon = "",
    name = "Coffee"
  },
  conf = {
    class = "seti-config",
    color = "#526064",
    cterm_color = "59",
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
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Cp"
  },
  cpp = {
    class = "custom-cpp",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Cpp"
  },
  cppm = {
    class = "custom-cpp",
    color = "#36677c",
    cterm_color = "24",
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
    color = "#434343",
    cterm_color = "238",
    icon = "",
    name = "Crystal"
  },
  cs = {
    class = "md-language_csharp",
    color = "#434d04",
    cterm_color = "58",
    icon = "󰌛",
    name = "Cs"
  },
  csh = {
    class = "dev-terminal",
    color = "#3a4446",
    cterm_color = "238",
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
    color = "#666620",
    cterm_color = "58",
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
    color = "#2c6ea3",
    cterm_color = "24",
    icon = "",
    name = "Css"
  },
  csv = {
    class = "seti-csv",
    color = "#447028",
    cterm_color = "22",
    icon = "",
    name = "Csv"
  },
  cts = {
    class = "seti-typescript",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Cts"
  },
  cu = {
    class = "seti-cu",
    color = "#447028",
    cterm_color = "22",
    icon = "",
    name = "cuda"
  },
  cuh = {
    class = "seti-cu",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "cudah"
  },
  cxx = {
    class = "custom-cpp",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Cxx"
  },
  cxxm = {
    class = "custom-cpp",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Cxxm"
  },
  d = {
    class = "dev-dlang",
    color = "#325a13",
    cterm_color = "22",
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
    color = "#494848",
    cterm_color = "238",
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
    color = "#553a3a",
    cterm_color = "238",
    icon = "",
    name = "Drools"
  },
  dropbox = {
    class = "dev-dropbox",
    color = "#0049be",
    cterm_color = "26",
    icon = "",
    name = "Dropbox"
  },
  dump = {
    class = "dev-database",
    color = "#494848",
    cterm_color = "238",
    icon = "",
    name = "Dump"
  },
  edn = {
    class = "dev-clojure_alt",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Edn"
  },
  eex = {
    class = "seti-elixir",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Eex"
  },
  ejs = {
    class = "seti-html",
    color = "#666620",
    cterm_color = "58",
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
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Elm"
  },
  eot = {
    class = "fa-font",
    color = "#2f2f2f",
    cterm_color = "236",
    icon = "",
    name = "EmbeddedOpenTypeFont"
  },
  epp = {
    class = "seti-puppet",
    color = "#80530d",
    cterm_color = "94",
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
    color = "#8a2b72",
    cterm_color = "89",
    icon = "",
    name = "Erl"
  },
  ex = {
    class = "seti-elixir",
    color = "#6b4d83",
    cterm_color = "96",
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
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Exs"
  },
  ["f#"] = {
    class = "dev-fsharp",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Fsharp"
  },
  f90 = {
    class = "md-language_fortran",
    color = "#563b70",
    cterm_color = "53",
    icon = "󱈚",
    name = "Fortran"
  },
  fish = {
    class = "dev-terminal",
    color = "#3a4446",
    cterm_color = "238",
    icon = "",
    name = "Fish"
  },
  flac = {
    class = "fa-music",
    color = "#336c78",
    cterm_color = "23",
    icon = "",
    name = "Flac"
  },
  fnl = {
    class = "custom-fennel",
    color = "#33312b",
    cterm_color = "236",
    icon = "",
    name = "Fennel"
  },
  fs = {
    class = "dev-fsharp",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Fs"
  },
  fsi = {
    class = "dev-fsharp",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Fsi"
  },
  fsscript = {
    class = "dev-fsharp",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Fsscript"
  },
  fsx = {
    class = "dev-fsharp",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Fsx"
  },
  gd = {
    class = "seti-config",
    color = "#526064",
    cterm_color = "59",
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
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Gif"
  },
  git = {
    class = "dev-git",
    color = "#b5391e",
    cterm_color = "160",
    icon = "",
    name = "GitLogo"
  },
  glb = {
    class = "fa-cube",
    color = "#80581e",
    cterm_color = "94",
    icon = "",
    name = "BinaryGLTF"
  },
  gnumakefile = {
    class = "dev-gnu",
    color = "#526064",
    cterm_color = "59",
    icon = "",
    name = "Makefile"
  },
  go = {
    class = "seti-go",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Go"
  },
  godot = {
    class = "dev-code_badge",
    color = "#526064",
    cterm_color = "59",
    icon = "",
    name = "GodotProject"
  },
  gql = {
    class = "fa-connectdevelop",
    color = "#ac2880",
    cterm_color = "126",
    icon = "",
    name = "GraphQL"
  },
  graphql = {
    class = "fa-connectdevelop",
    color = "#ac2880",
    cterm_color = "126",
    icon = "",
    name = "GraphQL"
  },
  h = {
    class = "fa-h_square",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "H"
  },
  haml = {
    class = "seti-html",
    color = "#2f2f2d",
    cterm_color = "236",
    icon = "",
    name = "Haml"
  },
  hbs = {
    class = "seti-mustache",
    color = "#a04f1d",
    cterm_color = "130",
    icon = "",
    name = "Hbs"
  },
  heex = {
    class = "seti-elixir",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Heex"
  },
  hh = {
    class = "fa-h_square",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Hh"
  },
  hpp = {
    class = "fa-h_square",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Hpp"
  },
  hrl = {
    class = "dev-erlang",
    color = "#8a2b72",
    cterm_color = "89",
    icon = "",
    name = "Hrl"
  },
  hs = {
    class = "seti-haskell",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Hs"
  },
  htm = {
    class = "seti-html",
    color = "#aa391c",
    cterm_color = "124",
    icon = "",
    name = "Htm"
  },
  html = {
    class = "dev-html5",
    color = "#ab3a1c",
    cterm_color = "124",
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
    color = "#bf0266",
    cterm_color = "125",
    icon = "",
    name = "Hurl"
  },
  hx = {
    class = "seti-haxe",
    color = "#9c5715",
    cterm_color = "130",
    icon = "",
    name = "Haxe"
  },
  hxx = {
    class = "fa-h_square",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Hxx"
  },
  ico = {
    class = "seti-image",
    color = "#666620",
    cterm_color = "58",
    icon = "",
    name = "Ico"
  },
  import = {
    class = "fa-paperclip",
    color = "#2f2f2f",
    cterm_color = "236",
    icon = "",
    name = "ImportConfiguration"
  },
  ini = {
    class = "seti-config",
    color = "#526064",
    cterm_color = "59",
    icon = "",
    name = "Ini"
  },
  ino = {
    class = "linux-arduino",
    color = "#397981",
    cterm_color = "30",
    icon = "",
    name = "arduino"
  },
  ipynb = {
    class = "seti-python",
    color = "#366b8a",
    cterm_color = "24",
    icon = "",
    name = "Notebook"
  },
  ixx = {
    class = "custom-cpp",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Ixx"
  },
  java = {
    class = "dev-java",
    color = "#992e33",
    cterm_color = "88",
    icon = "",
    name = "Java"
  },
  jl = {
    class = "seti-julia",
    color = "#6c4b7c",
    cterm_color = "96",
    icon = "",
    name = "Jl"
  },
  jpeg = {
    class = "seti-image",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Jpeg"
  },
  jpg = {
    class = "seti-image",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Jpg"
  },
  js = {
    class = "md-language_javascript",
    color = "#505011",
    cterm_color = "58",
    icon = "󰌞",
    name = "Js"
  },
  json = {
    class = "seti-json",
    color = "#666620",
    cterm_color = "58",
    icon = "",
    name = "Json"
  },
  json5 = {
    class = "seti-json",
    color = "#666620",
    cterm_color = "58",
    icon = "",
    name = "Json5"
  },
  jsonc = {
    class = "seti-json",
    color = "#666620",
    cterm_color = "58",
    icon = "",
    name = "Jsonc"
  },
  jsx = {
    class = "seti-react",
    color = "#158197",
    cterm_color = "31",
    icon = "",
    name = "Jsx"
  },
  jxl = {
    class = "seti-image",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "JpegXl"
  },
  ksh = {
    class = "dev-terminal",
    color = "#3a4446",
    cterm_color = "238",
    icon = "",
    name = "Ksh"
  },
  kt = {
    class = "seti-kotlin",
    color = "#5f3ebf",
    cterm_color = "92",
    icon = "",
    name = "Kotlin"
  },
  kts = {
    class = "seti-kotlin",
    color = "#5f3ebf",
    cterm_color = "92",
    icon = "",
    name = "KotlinScript"
  },
  leex = {
    class = "seti-elixir",
    color = "#6b4d83",
    cterm_color = "96",
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
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Lhs"
  },
  license = {
    class = "seti-license",
    color = "#666620",
    cterm_color = "58",
    icon = "",
    name = "License"
  },
  liquid = {
    class = "seti-liquid",
    color = "#4a6024",
    cterm_color = "58",
    icon = "",
    name = "Liquid"
  },
  lock = {
    class = "fa-unlock_alt",
    color = "#5e5e5e",
    cterm_color = "59",
    icon = "",
    name = "Lock"
  },
  log = {
    class = "md-library",
    color = "#4a4a4a",
    cterm_color = "239",
    icon = "󰌱",
    name = "Log"
  },
  lua = {
    class = "seti-lua",
    color = "#366b8a",
    cterm_color = "24",
    icon = "",
    name = "Lua"
  },
  luau = {
    class = "seti-lua",
    color = "#007abf",
    cterm_color = "32",
    icon = "",
    name = "Luau"
  },
  m4a = {
    class = "fa-music",
    color = "#336c78",
    cterm_color = "23",
    icon = "",
    name = "M4A"
  },
  m4v = {
    class = "fa-video_camera",
    color = "#7e4c10",
    cterm_color = "94",
    icon = "",
    name = "M4V"
  },
  makefile = {
    class = "dev-gnu",
    color = "#526064",
    cterm_color = "59",
    icon = "",
    name = "Makefile"
  },
  markdown = {
    class = "seti-markdown",
    color = "#4a4a4a",
    cterm_color = "239",
    icon = "",
    name = "Markdown"
  },
  material = {
    class = "md-image_filter_hdr",
    color = "#8a2b72",
    cterm_color = "89",
    icon = "󰔉",
    name = "Material"
  },
  md = {
    class = "oct-markdown",
    color = "#4a4a4a",
    cterm_color = "239",
    icon = "",
    name = "Md"
  },
  mdx = {
    class = "oct-markdown",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Mdx"
  },
  mint = {
    class = "md-leaf",
    color = "#44604a",
    cterm_color = "23",
    icon = "󰌪",
    name = "Mint"
  },
  mjs = {
    class = "md-language_javascript",
    color = "#505011",
    cterm_color = "58",
    icon = "󰌞",
    name = "Mjs"
  },
  mk = {
    class = "dev-gnu",
    color = "#526064",
    cterm_color = "59",
    icon = "",
    name = "Makefile"
  },
  mkv = {
    class = "fa-video_camera",
    color = "#7e4c10",
    cterm_color = "94",
    icon = "",
    name = "Mkv"
  },
  ml = {
    class = "seti-ocaml",
    color = "#975122",
    cterm_color = "130",
    icon = "",
    name = "Ml"
  },
  mli = {
    class = "seti-ocaml",
    color = "#975122",
    cterm_color = "130",
    icon = "",
    name = "Mli"
  },
  mo = {
    class = "md-infinity",
    color = "#654ca7",
    cterm_color = "61",
    icon = "󰛤",
    name = "Motoko"
  },
  mov = {
    class = "fa-video_camera",
    color = "#7e4c10",
    cterm_color = "94",
    icon = "",
    name = "MOV"
  },
  mp3 = {
    class = "fa-music",
    color = "#336c78",
    cterm_color = "23",
    icon = "",
    name = "Mp3"
  },
  mp4 = {
    class = "fa-video_camera",
    color = "#7e4c10",
    cterm_color = "94",
    icon = "",
    name = "Mp4"
  },
  mpp = {
    class = "custom-cpp",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Mpp"
  },
  mts = {
    class = "seti-typescript",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Mts"
  },
  mustache = {
    class = "seti-mustache",
    color = "#975122",
    cterm_color = "130",
    icon = "",
    name = "Mustache"
  },
  nim = {
    class = "seti-nim",
    color = "#514700",
    cterm_color = "58",
    icon = "",
    name = "Nim"
  },
  nix = {
    class = "linux-nixos",
    color = "#3f5d72",
    cterm_color = "24",
    icon = "",
    name = "Nix"
  },
  nswag = {
    class = "seti-json",
    color = "#427516",
    cterm_color = "28",
    icon = "",
    name = "Nswag"
  },
  nu = {
    class = "fa-chevron_right",
    color = "#276f4e",
    cterm_color = "29",
    icon = "",
    name = "Nushell"
  },
  ogg = {
    class = "fa-music",
    color = "#336c78",
    cterm_color = "23",
    icon = "",
    name = "Ogg"
  },
  opus = {
    class = "md-file_music",
    color = "#a55c01",
    cterm_color = "130",
    icon = "󰈣",
    name = "OPUS"
  },
  org = {
    class = "custom-orgmode",
    color = "#4f7166",
    cterm_color = "66",
    icon = "",
    name = "OrgMode"
  },
  otf = {
    class = "fa-font",
    color = "#2f2f2f",
    cterm_color = "236",
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
    color = "#526064",
    cterm_color = "59",
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
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Php"
  },
  pl = {
    class = "dev-perl",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Pl"
  },
  pm = {
    class = "dev-perl",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Pm"
  },
  png = {
    class = "seti-image",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Png"
  },
  pp = {
    class = "seti-puppet",
    color = "#80530d",
    cterm_color = "94",
    icon = "",
    name = "Pp"
  },
  ppt = {
    class = "md-file_powerpoint",
    color = "#983826",
    cterm_color = "124",
    icon = "󰈧",
    name = "Ppt"
  },
  prisma = {
    class = "seti-prisma",
    color = "#444da2",
    cterm_color = "61",
    icon = "",
    name = "Prisma"
  },
  pro = {
    class = "dev-prolog",
    color = "#725c2a",
    cterm_color = "94",
    icon = "",
    name = "Prolog"
  },
  ps1 = {
    class = "md-powershell",
    color = "#325698",
    cterm_color = "25",
    icon = "󰨊",
    name = "PsScriptfile"
  },
  psb = {
    class = "dev-photoshop",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Psb"
  },
  psd = {
    class = "dev-photoshop",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Psd"
  },
  psd1 = {
    class = "md-powershell",
    color = "#4f5893",
    cterm_color = "60",
    icon = "󰨊",
    name = "PsManifestfile"
  },
  psm1 = {
    class = "md-powershell",
    color = "#4f5893",
    cterm_color = "60",
    icon = "󰨊",
    name = "PsScriptModulefile"
  },
  pxd = {
    class = "seti-python",
    color = "#3c6f98",
    cterm_color = "24",
    icon = "",
    name = "Pxd"
  },
  pxi = {
    class = "seti-python",
    color = "#3c6f98",
    cterm_color = "24",
    icon = "",
    name = "Pxi"
  },
  py = {
    class = "seti-python",
    color = "#805e02",
    cterm_color = "94",
    icon = "",
    name = "Py"
  },
  pyc = {
    class = "seti-python",
    color = "#332d1d",
    cterm_color = "236",
    icon = "",
    name = "Pyc"
  },
  pyd = {
    class = "seti-python",
    color = "#332d1d",
    cterm_color = "236",
    icon = "",
    name = "Pyd"
  },
  pyi = {
    class = "seti-python",
    color = "#805e02",
    cterm_color = "94",
    icon = "",
    name = "Pyi"
  },
  pyo = {
    class = "seti-python",
    color = "#332d1d",
    cterm_color = "236",
    icon = "",
    name = "Pyo"
  },
  pyx = {
    class = "seti-python",
    color = "#3c6f98",
    cterm_color = "24",
    icon = "",
    name = "Pyx"
  },
  query = {
    class = "fae-tree",
    color = "#607035",
    cterm_color = "58",
    icon = "",
    name = "Query"
  },
  r = {
    class = "md-language_r",
    color = "#1a4c8c",
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
    color = "#992e33",
    cterm_color = "88",
    icon = "",
    name = "ReScript"
  },
  resi = {
    class = "seti-rescript",
    color = "#a33759",
    cterm_color = "125",
    icon = "",
    name = "ReScriptInterface"
  },
  rlib = {
    class = "dev-rust",
    color = "#6f5242",
    cterm_color = "95",
    icon = "",
    name = "Rlib"
  },
  rmd = {
    class = "seti-markdown",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Rmd"
  },
  rproj = {
    class = "md-vector_rectangle",
    color = "#286844",
    cterm_color = "29",
    icon = "󰗆",
    name = "Rproj"
  },
  rs = {
    class = "seti-rust",
    color = "#6f5242",
    cterm_color = "95",
    icon = "",
    name = "Rs"
  },
  rss = {
    class = "seti-xml",
    color = "#7e4e1e",
    cterm_color = "94",
    icon = "",
    name = "Rss"
  },
  sass = {
    class = "seti-sass",
    color = "#a33759",
    cterm_color = "125",
    icon = "",
    name = "Sass"
  },
  sbt = {
    class = "dev-scala",
    color = "#992e33",
    cterm_color = "88",
    icon = "",
    name = "sbt"
  },
  scad = {
    class = "linux-openscad",
    color = "#53480f",
    cterm_color = "58",
    icon = "",
    name = "OpenSCAD"
  },
  scala = {
    class = "dev-scala",
    color = "#992e33",
    cterm_color = "88",
    icon = "",
    name = "Scala"
  },
  scm = {
    class = "md-lambda",
    color = "#303030",
    cterm_color = "236",
    icon = "󰘧",
    name = "Scheme"
  },
  scss = {
    class = "seti-sass",
    color = "#a33759",
    cterm_color = "125",
    icon = "",
    name = "Scss"
  },
  sh = {
    class = "dev-terminal",
    color = "#3a4446",
    cterm_color = "238",
    icon = "",
    name = "Sh"
  },
  sig = {
    class = "md-lambda",
    color = "#975122",
    cterm_color = "130",
    icon = "󰘧",
    name = "Sig"
  },
  slim = {
    class = "seti-html",
    color = "#aa391c",
    cterm_color = "124",
    icon = "",
    name = "Slim"
  },
  sln = {
    class = "dev-visualstudio",
    color = "#643995",
    cterm_color = "91",
    icon = "",
    name = "Sln"
  },
  sml = {
    class = "md-lambda",
    color = "#975122",
    cterm_color = "130",
    icon = "󰘧",
    name = "Sml"
  },
  sol = {
    class = "seti-ethereum",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Solidity"
  },
  ["spec.js"] = {
    class = "oct-beaker",
    color = "#666620",
    cterm_color = "58",
    icon = "",
    name = "SpecJs"
  },
  ["spec.jsx"] = {
    class = "oct-beaker",
    color = "#158197",
    cterm_color = "31",
    icon = "",
    name = "JavaScriptReactSpec"
  },
  ["spec.ts"] = {
    class = "oct-beaker",
    color = "#36677c",
    cterm_color = "24",
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
    color = "#494848",
    cterm_color = "238",
    icon = "",
    name = "Sql"
  },
  sqlite = {
    class = "dev-database",
    color = "#494848",
    cterm_color = "238",
    icon = "",
    name = "Sql"
  },
  sqlite3 = {
    class = "dev-database",
    color = "#494848",
    cterm_color = "238",
    icon = "",
    name = "Sql"
  },
  styl = {
    class = "seti-stylus",
    color = "#466024",
    cterm_color = "22",
    icon = "",
    name = "Styl"
  },
  sublime = {
    class = "dev-sublime",
    color = "#975122",
    cterm_color = "130",
    icon = "",
    name = "Suo"
  },
  suo = {
    class = "dev-visualstudio",
    color = "#643995",
    cterm_color = "91",
    icon = "",
    name = "Suo"
  },
  sv = {
    class = "md-memory",
    color = "#017226",
    cterm_color = "22",
    icon = "󰍛",
    name = "SystemVerilog"
  },
  svelte = {
    class = "seti-svelte",
    color = "#bf2e00",
    cterm_color = "160",
    icon = "",
    name = "Svelte"
  },
  svg = {
    class = "md-svg",
    color = "#80581e",
    cterm_color = "94",
    icon = "󰜡",
    name = "Svg"
  },
  svh = {
    class = "md-memory",
    color = "#017226",
    cterm_color = "22",
    icon = "󰍛",
    name = "SystemVerilog"
  },
  swift = {
    class = "dev-swift",
    color = "#975122",
    cterm_color = "130",
    icon = "",
    name = "Swift"
  },
  t = {
    class = "dev-perl",
    color = "#36677c",
    cterm_color = "24",
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
    color = "#6e5e18",
    cterm_color = "58",
    icon = "",
    name = "Templ"
  },
  terminal = {
    class = "oct-terminal",
    color = "#217929",
    cterm_color = "28",
    icon = "",
    name = "Terminal"
  },
  ["test.js"] = {
    class = "oct-beaker",
    color = "#666620",
    cterm_color = "58",
    icon = "",
    name = "TestJs"
  },
  ["test.jsx"] = {
    class = "oct-beaker",
    color = "#158197",
    cterm_color = "31",
    icon = "",
    name = "JavaScriptReactTest"
  },
  ["test.ts"] = {
    class = "oct-beaker",
    color = "#36677c",
    cterm_color = "24",
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
    color = "#4732af",
    cterm_color = "55",
    icon = "",
    name = "Terraform"
  },
  tfvars = {
    class = "fa-file",
    color = "#4732af",
    cterm_color = "55",
    icon = "",
    name = "TFVars"
  },
  toml = {
    class = "custom-toml",
    color = "#753219",
    cterm_color = "88",
    icon = "",
    name = "Toml"
  },
  tres = {
    class = "dev-database",
    color = "#666620",
    cterm_color = "58",
    icon = "",
    name = "TextResource"
  },
  ts = {
    class = "seti-typescript",
    color = "#36677c",
    cterm_color = "24",
    icon = "",
    name = "Ts"
  },
  tscn = {
    class = "md-movie",
    color = "#6b4d83",
    cterm_color = "96",
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
    color = "#2f2f2f",
    cterm_color = "236",
    icon = "",
    name = "TrueTypeFont"
  },
  twig = {
    class = "seti-twig",
    color = "#466024",
    cterm_color = "22",
    icon = "",
    name = "Twig"
  },
  txt = {
    class = "md-file_document",
    color = "#447028",
    cterm_color = "22",
    icon = "󰈙",
    name = "Txt"
  },
  v = {
    class = "md-memory",
    color = "#017226",
    cterm_color = "22",
    icon = "󰍛",
    name = "Verilog"
  },
  vala = {
    class = "seti-vala",
    color = "#562b86",
    cterm_color = "54",
    icon = "",
    name = "Vala"
  },
  vh = {
    class = "md-memory",
    color = "#017226",
    cterm_color = "22",
    icon = "󰍛",
    name = "Verilog"
  },
  vhd = {
    class = "md-memory",
    color = "#017226",
    cterm_color = "22",
    icon = "󰍛",
    name = "VHDL"
  },
  vhdl = {
    class = "md-memory",
    color = "#017226",
    cterm_color = "22",
    icon = "󰍛",
    name = "VHDL"
  },
  vim = {
    class = "custom-vim",
    color = "#017226",
    cterm_color = "22",
    icon = "",
    name = "Vim"
  },
  vsh = {
    class = "custom-v_lang",
    color = "#3e5a7f",
    cterm_color = "24",
    icon = "",
    name = "Vlang"
  },
  vue = {
    class = "seti-vue",
    color = "#466024",
    cterm_color = "22",
    icon = "",
    name = "Vue"
  },
  wasm = {
    class = "seti-wasm",
    color = "#4539a4",
    cterm_color = "55",
    icon = "",
    name = "Wasm"
  },
  wav = {
    class = "fa-music",
    color = "#336c78",
    cterm_color = "23",
    icon = "",
    name = "Wav"
  },
  webm = {
    class = "fa-video_camera",
    color = "#7e4c10",
    cterm_color = "94",
    icon = "",
    name = "Webm"
  },
  webmanifest = {
    class = "seti-json",
    color = "#504b1e",
    cterm_color = "58",
    icon = "",
    name = "Webmanifest"
  },
  webp = {
    class = "seti-image",
    color = "#6b4d83",
    cterm_color = "96",
    icon = "",
    name = "Webp"
  },
  webpack = {
    class = "md-webpack",
    color = "#36677c",
    cterm_color = "24",
    icon = "󰜫",
    name = "Webpack"
  },
  woff = {
    class = "fa-font",
    color = "#2f2f2f",
    cterm_color = "236",
    icon = "",
    name = "WebOpenFontFormat"
  },
  woff2 = {
    class = "fa-font",
    color = "#2f2f2f",
    cterm_color = "236",
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
    color = "#975122",
    cterm_color = "130",
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
    color = "#975122",
    cterm_color = "130",
    icon = "󰗀",
    name = "Xml"
  },
  xul = {
    class = "dev-firefox",
    color = "#975122",
    cterm_color = "130",
    icon = "",
    name = "Xul"
  },
  yaml = {
    class = "seti-config",
    color = "#526064",
    cterm_color = "59",
    icon = "",
    name = "Yaml"
  },
  yml = {
    class = "seti-config",
    color = "#526064",
    cterm_color = "59",
    icon = "",
    name = "Yml"
  },
  zig = {
    class = "seti-zig",
    color = "#7b4d0e",
    cterm_color = "94",
    icon = "",
    name = "Zig"
  },
  zsh = {
    class = "dev-terminal",
    color = "#447028",
    cterm_color = "22",
    icon = "",
    name = "Zsh"
  }
}

M.icons_by_operating_system = {
  alma = {
    class = "linux-almalinux",
    color = "#bf3437",
    cterm_color = "160",
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
    color = "#515556",
    cterm_color = "240",
    icon = "",
    name = "Apple"
  },
  arch = {
    class = "md-arch",
    color = "#0b6f9e",
    cterm_color = "24",
    icon = "󰣇",
    name = "Arch"
  },
  artix = {
    class = "linux-artix",
    color = "#2b788f",
    cterm_color = "31",
    icon = "",
    name = "Artix"
  },
  budgie = {
    class = "linux-budgie",
    color = "#366397",
    cterm_color = "25",
    icon = "",
    name = "Budgie"
  },
  centos = {
    class = "linux-centos",
    color = "#7a3d6a",
    cterm_color = "89",
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
    color = "#1d6fa5",
    cterm_color = "24",
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
    color = "#3b6081",
    cterm_color = "24",
    icon = "",
    name = "Elementary"
  },
  endeavour = {
    class = "linux-endeavour",
    color = "#5c2e8b",
    cterm_color = "54",
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
    color = "#585667",
    cterm_color = "60",
    icon = "󰣨",
    name = "Gentoo"
  },
  guix = {
    class = "linux-gnu_guix",
    color = "#554400",
    cterm_color = "58",
    icon = "",
    name = "Guix"
  },
  illumos = {
    class = "linux-illumos",
    color = "#bf320b",
    cterm_color = "160",
    icon = "",
    name = "Illumos"
  },
  kali = {
    class = "linux-kali_linux",
    color = "#1d59bf",
    cterm_color = "26",
    icon = "",
    name = "Kali"
  },
  linux = {
    class = "cod-terminal_linux",
    color = "#333332",
    cterm_color = "236",
    icon = "",
    name = "Linux"
  },
  mageia = {
    class = "linux-mageia",
    color = "#1a719f",
    cterm_color = "24",
    icon = "",
    name = "Mageia"
  },
  manjaro = {
    class = "linux-manjaro",
    color = "#227b3b",
    cterm_color = "29",
    icon = "",
    name = "Manjaro"
  },
  mint = {
    class = "md-linux_mint",
    color = "#447529",
    cterm_color = "28",
    icon = "󰣭",
    name = "Mint"
  },
  nixos = {
    class = "linux-nixos",
    color = "#3d586e",
    cterm_color = "24",
    icon = "",
    name = "NixOS"
  },
  openbsd = {
    class = "linux-openbsd",
    color = "#514310",
    cterm_color = "58",
    icon = "",
    name = "OpenBSD"
  },
  opensuse = {
    class = "linux-opensuse",
    color = "#4a7818",
    cterm_color = "64",
    icon = "",
    name = "openSUSE"
  },
  parrot = {
    class = "linux-parrot",
    color = "#2a6f80",
    cterm_color = "23",
    icon = "",
    name = "Parrot"
  },
  pop_os = {
    class = "linux-pop_os",
    color = "#307b85",
    cterm_color = "30",
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
    color = "#0b865e",
    cterm_color = "29",
    icon = "",
    name = "RockyLinux"
  },
  sabayon = {
    class = "linux-sabayon",
    color = "#424242",
    cterm_color = "238",
    icon = "",
    name = "Sabayon"
  },
  slackware = {
    class = "linux-slackware",
    color = "#35477f",
    cterm_color = "25",
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
    color = "#a6360f",
    cterm_color = "124",
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
    color = "#007bb3",
    cterm_color = "67",
    icon = "",
    name = "Windows"
  },
  zorin = {
    class = "linux-zorin",
    color = "#0f79ae",
    cterm_color = "67",
    icon = "",
    name = "Zorin"
  }
}

return M
