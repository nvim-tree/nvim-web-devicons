# Nvim-web-devicons

A `lua` fork of [vim-devicons](https://github.com/ryanoasis/vim-devicons). This plugin provides the same icons _as well as_
colors for each icon.

## Requirements

- [A patched font](https://www.nerdfonts.com/)

## Installation

Using Plug
```vim
Plug 'kyazdani42/nvim-web-devicons'
```

Using Packer

```lua
return require('packer').startup(function()
    use {
        'kyazdani42/nvim-web-devicons',
        config = function()
        -- Your config stuff goes here
        end
    },
end)
```

## Usage

### Colorscheme

Devicons now uses the base 16 architecture, which means that it is now easier
to override colors.

Refer to the colors.lua file

To override the default colorcheme:

```lua
Colors = {
    gui00 = "#rrbbgg", -- Default Background
    gui01 = "#rrbbgg", -- Lighter Background (Used for status bars, line number and folding marks)
    gui02 = "#rrbbgg", -- Selection Background
    gui03 = "#rrbbgg", -- Comments, Invisibles, Line Highlighting
    gui04 = "#rrbbgg", -- Dark Foreground (Used for status bars)
    gui05 = "#rrbbgg", -- Default Foreground, Caret, Delimiters, Operators
    gui06 = "#rrbbgg", -- Light Foreground (Not often used)
    gui07 = "#rrbbgg", -- Light Background (Not often used)
    gui08 = "#rrbbgg", -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted (red)
    gui09 = "#rrbbgg", -- Integers, Boolean, Constants, XML Attributes, Markup Link Url (orange)
    gui0A = "#rrbbgg", -- Classes, Markup Bold, Search Text Background (yellow)
    gui0B = "#rrbbgg", -- Strings, Inherited Class, Markup Code, Diff Inserted (green)
    gui0C = "#rrbbgg", -- Support, Regular Expressions, Escape Characters, Markup Quotes (cyan)
    gui0D = "#rrbbgg", -- Functions, Methods, Attribute IDs, Headings (blue)
    gui0E = "#rrbbgg", -- Keywords, Storage, Selector, Markup Italic, Diff Changed (magenta)
    gui0F = "#rrbbgg", -- Deprecated, Opening/Closing Embedded Language Tags, e.g. `<?php ?>` (pink)
}
```


### Setup

This adds all the highlight groups for the devicons
i.e. it calls `highlight IconNameDevicon guifg='<color>'` for all icons
this might need to be re-called in a `Colorscheme` to re-apply cleared highlights
if the color scheme changes

```lua
require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
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
    name = "Zsh"
  }
}
```

You can override the default icon with the `set_default_icon(icon, color)` function:

```lua
require("nvim-web-devicons").set_default_icon('', '#6d8086')
```
