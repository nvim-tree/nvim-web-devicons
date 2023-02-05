local _MODREV, _SPECREV = 'scm', '-1'
rockspec_format = "3.0"
package = 'nvim-web-devicons'
version = _MODREV .. _SPECREV

description = {
   summary = 'A lua fork of vim-devicons',
   labels = {
     'neovim',
     'plugin'
   },
   detailed = [[
   This plugin provides the same icons as well as colors for each icon.
   ]],
   homepage = 'http://github.com/nvim-tree/nvim-web-devicons';
   license = 'MIT',
}

dependencies = {
   'lua >= 5.1',
}

source = {
   url = 'git://github.com/nvim-tree/nvim-web-devicons'
}

build = {
   type = 'builtin',
   copy_directories = {
     'plugin'
   }
}
