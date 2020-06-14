local icons = {
  ['.bashprofile'] = '';
  ['.bashrc'] = '';
  ['.babelrc'] = 'ﬥ';
  ['.ds_store'] = '';
  ['.gitattributes'] = '';
  ['.gitconfig'] = '';
  ['.gitignore'] = '';
  ['.gitlab-ci.yml'] = '';
  ['.gvimrc'] = '';
  ['.npmignore'] = '';
  ['.vimrc'] = '';
  ['.vimrc'] = '';
  ['.zshrc'] = '';
  ['Dockerfile'] = '';
  ['Gemfile$'] = '';
  ['LICENSE'] = '';
  ['Vagrantfile$'] = '';
  ['_gvimrc'] = '';
  ['_vimrc'] = '';
  ['ai'] = '';
  ['awk'] = '';
  ['bash'] = '';
  ['bat'] = '';
  ['bmp'] = '';
  ['c'] = '';
  ['c++'] = '';
  ['cc'] = '';
  ['clj'] = '';
  ['cljc'] = '';
  ['cljs'] = '';
  ['cmakelists.txt'] = '';
  ['coffee'] = '';
  ['conf'] = '';
  ['config.ru'] = '';
  ['cp'] = '';
  ['cpp'] = '';
  ['cs'] = '';
  ['csh'] = '';
  ['css'] = '';
  ['cxx'] = '';
  ['d'] = '';
  ['dart'] = '';
  ['db'] = '';
  ['diff'] = '';
  ['dockerfile'] = '';
  ['dropbox'] = '';
  ['dump'] = '';
  ['edn'] = '';
  ['eex'] = '';
  ['ejs'] = '';
  ['elm'] = '';
  ['erl'] = '';
  ['ex'] = '';
  ['exs'] = '';
  ['f#'] = '';
  ['favicon.ico'] = '';
  ['fish'] = '';
  ['fs'] = '';
  ['fsi'] = '';
  ['fsscript'] = '';
  ['fsx'] = '';
  ['gemspec'] = '';
  ['gif'] = '';
  ['go'] = '';
  ['h'] = '';
  ['haml'] = '';
  ['hbs'] = '';
  ['hh'] = '';
  ['hpp'] = '';
  ['hrl'] = '';
  ['hs'] = '';
  ['htm'] = '';
  ['html'] = '';
  ['hxx'] = '';
  ['ico'] = '';
  ['ini'] = '';
  ['java'] = '';
  ['jl'] = '';
  ['jpeg'] = '';
  ['jpg'] = '';
  ['js'] = '';
  ['json'] = '';
  ['jsx'] = '';
  ['jsx'] = '';
  ['ksh'] = '';
  ['leex'] = '';
  ['less'] = '';
  ['lhs'] = '';
  ['license'] = '';
  ['lua'] = '';
  ['makefile'] = '';
  ['markdown'] = '';
  ['md'] = '';
  ['mdx'] = '';
  ['mix.lock'] = '';
  ['mjs'] = '';
  ['ml'] = 'λ';
  ['mli'] = 'λ';
  ['mustache'] = '';
  ['node_modules'] = '';
  ['php'] = '';
  ['pl'] = '';
  ['pm'] = '';
  ['png'] = '';
  ['pp'] = '';
  ['procfile'] = '';
  ['ps1'] = '';
  ['psb'] = '';
  ['psd'] = '';
  ['py'] = '';
  ['pyc'] = '';
  ['pyd'] = '';
  ['pyo'] = '';
  ['r'] = 'ﳒ';
  ['rake'] = '';
  ['rakefile'] = '';
  ['rb'] = '';
  ['rlib'] = '';
  ['rmd'] = '';
  ['rproj'] = '鉶';
  ['rs'] = '';
  ['rss'] = '';
  ['sass'] = '';
  ['scala'] = '';
  ['scss'] = '';
  ['sh'] = '';
  ['slim'] = '';
  ['sln'] = '';
  ['sql'] = '';
  ['styl'] = '';
  ['suo'] = '';
  ['swift'] = '';
  ['t'] = '';
  ['tex'] = 'ﭨ';
  ['toml'] = '';
  ['ts'] = '';
  ['tsx'] = '';
  ['twig'] = '';
  ['vim'] = '';
  ['vue'] = '﵂';
  ['webmanifest'] = '';
  ['webp'] = '';
  ['xcplayground'] = '';
  ['xul'] = '';
  ['yaml'] = '';
  ['yml'] = '';
  ['zsh'] = '';
}

return {
  get_icon = function(name, ext)
    local by_name = icons[name]

    if by_name then
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
      return by_name, s .. "Icon"
    else
      local by_ext = icons[ext]
      return by_ext, (ext:gsub("^%l", string.upper)) .. "Icon"
    end
  end,
  setup = function()
    for _, hl in pairs(hl_groups) do
      -- TODO: set highlight group
    end

  end
}
