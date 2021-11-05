# Nvim-web-devicons

A `lua` fork of [vim-devicons](https://github.com/ryanoasis/vim-devicons). This plugin provides the same icons _as well as_
colors for each icon.

## Requirements

- [A patched font](https://www.nerdfonts.com/)

## Installation

```vim
Plug 'kyazdani42/nvim-web-devicons'
```

## Usage

### Setup

This adds all the highlight groups for the devicons
i.e. it calls `highlight IconNameDevicon guifg='<color>' ctermfg='<cterm_color>'` for all icons
this might need to be re-called in a `Colorscheme` to re-apply cleared highlights
if the color scheme changes

```lua
require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
 };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}
```

### Get Icon

Get the icon for a given file by passing in the `name`, the `extension` and an _optional_ options `table`.
The name is passed in to check for an exact match e.g. `.bashrc` if there is no exact name match the extension
is used. Calls `.setup()` if it hasn't already ran.

```lua
require'nvim-web-devicons'.get_icon(filename, extension, options)
```

The optional `options` argument can used to change how the plugin works the keys include
`default = <boolean>`. If the default key is set to true this function will return a default
if there is no matching icon
e.g.

```lua
require'nvim-web-devicons'.get_icon(filename, extension, { default = true })
```

You can check if the setup function was already called with:
```lua
require'nvim-web-devicons'.has_loaded()
```

### Get icon and color code

`get_icon_color` differs from `get_icon` only in the second return value.
`get_icon_cterm_color` returns cterm color instead of gui color
`get_icon` returns icon and highlight name.
If you want to get color code, you can use this function.
```lua
local icon, color = require'nvim-web-devicons'.get_icon_color("init.lua", "lua")
assert(icon == "")
assert(color == "#51a0cf")
```

### Get all icons

It is possible to get all of the registered icons with the `get_icons()` function:

```lua
require'nvim-web-devicons'.get_icons()
```

This can be useful for debugging purposes or for creating custom highlights for each icon.


### Set an icon

You can override individual icons with the `set_icon({...})` function:

```lua
require("nvim-web-devicons").set_icon {
  zsh = {
    icon = "",
    color = "#428850",
    cterm_color = "65",
    name = "Zsh"
  }
}
```

You can override the default icon with the `set_default_icon(icon, color)` function:

```lua
require("nvim-web-devicons").set_default_icon('', '#6d8086')
```
