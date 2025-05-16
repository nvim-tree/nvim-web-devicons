# Nvim-web-devicons

Provides [Nerd Font](https://www.nerdfonts.com/) [^1] icons (glyphs) for use by *Neovim* plugins:

- Icons by:
  - Extension
  - Full name
- Colours
- Light and dark variants
- API to modify/add icons

A `lua` fork of [vim-devicons](https://github.com/ryanoasis/vim-devicons).

> [!TIP]
> nvim-web-devicons adds new icons as they are introduced to Nerd Fonts. Please ensure that you are using the latest version of the font as newly introduced icons may display incorrectly or as an "unknown character".

> [!IMPORTANT]
> Nerd fonts moved some symbols with version 3.0. Version 2.3 is meant for transition,
> supporting both version 2 and version 3 icons.
> Nvim-web-devicons requires version 2.3 or above to work properly. If you are unable to update
> please use your plugin manager to pin version of nvim-web-dev icons to `nerd-v2-compat` tag.

[^1]: Not limited to Nerd Font icons: unicode and other fonts may be used.

## Requirements

- [neovim >=0.7.0](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- [A Patched Nerd Font](https://www.nerdfonts.com/)

## Installation

```vim
Plug 'nvim-tree/nvim-web-devicons'
```

or with [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use 'nvim-tree/nvim-web-devicons'
```

or with [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{ "nvim-tree/nvim-web-devicons", opts = {} },
```

[![LuaRocks](https://img.shields.io/luarocks/v/nvim-tree/nvim-web-devicons?logo=lua&color=purple)](https://luarocks.org/modules/nvim-tree/nvim-web-devicons)

## Additional Icons

Additional icons may be added for icons that are present in Nerd Fonts: use the [Cheat Sheet](https://www.nerdfonts.com/cheat-sheet) search for available icons.

PRs are always welcome! Please see [CONTRIBUTING](CONTRIBUTING.md)

> [!IMPORTANT]
> If the icon you need is not available on Nerd Fonts you first need to make a
> PR to a project that feeds glyphs to Nerd Fonts. Probably the most adequate
> project to contribute is <https://github.com/devicons/devicon>.
> Take into account that **months** can pass before the icon is available on the
> Nerd Fonts project, once there feel free to open a PR on this project, see 
> [CONTRIBUTING](CONTRIBUTING.md)

## Usage

### Viewing

Run `:NvimWebDeviconsHiTest` to see all icons and their highlighting.

### Variants

Light or dark color variants of the icons depend on `&background`.  
The variant can also be set manually in `setup` with the `variant` option.

The variant is updated:

- on `OptionSet` event for `background`, or
- after explicitly calling `require("nvim-web-devicons").refresh()`.

However, be advised that the plugin using nvim-web-devicons may have cached the icons.

### Case Sensitivity

Filename icons e.g. `"Dockerfile"` are case insensitively matched.

Extension icons e.g. `"lua"` are case sensitive.

### Setup

This adds all the highlight groups for the devicons
i.e. it calls `vim.api.nvim_set_hl` for all icons
this might need to be re-called in a `Colorscheme` to re-apply cleared highlights
if the color scheme changes

```lua
require'nvim-web-devicons'.setup {
 -- your personal icons can go here (to override)
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
 -- globally enable different highlight colors per icon (default to true)
 -- if set to false all icons will have the default icon's color
 color_icons = true;
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
 -- globally enable "strict" selection of icons - icon will be looked up in
 -- different tables, first by filename, and if not found by extension; this
 -- prevents cases when file doesn't have any extension but still gets some icon
 -- because its name happened to match some extension (default to false)
 strict = true;
 -- set the light or dark variant manually, instead of relying on `background`
 -- (default to nil)
 variant = "light|dark";
 -- same as `override` but specifically for overrides by filename
 -- takes effect when `strict` is true
 override_by_filename = {
  [".gitignore"] = {
    icon = "",
    color = "#f1502f",
    name = "Gitignore"
  }
 };
 -- same as `override` but specifically for overrides by extension
 -- takes effect when `strict` is true
 override_by_extension = {
  ["log"] = {
    icon = "",
    color = "#81e043",
    name = "Log"
  }
 };
 -- same as `override` but specifically for operating system
 -- takes effect when `strict` is true
 override_by_operating_system = {
  ["apple"] = {
    icon = "",
    color = "#A2AAAD",
    cterm_color = "248",
    name = "Apple",
  },
 };
}
```

### Get Icon

Get the icon for a given file by passing in the `name`, the `extension` and an *optional* options `table`.
The name is passed in to check for an exact match e.g. `.bashrc` if there is no exact name match the extension
is used. Calls `.setup()` if it hasn't already ran.

```lua
require'nvim-web-devicons'.get_icon(filename, extension, options)
```

The optional `options` argument can used to change how the plugin works the keys include
`default = <boolean>` and `strict = <boolean>`. If the default key is set to true this
function will return a default if there is no matching icon. If the strict key is set
to true this function will lookup icon specifically by filename, and if not found then
specifically by extension, and fallback to default icon if default key is set to true.
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

Mapped categories can be fetched via:

```lua
require'nvim-web-devicons'.get_icons_by_filename()
require'nvim-web-devicons'.get_icons_by_extension()
require'nvim-web-devicons'.get_icons_by_operating_system()
require'nvim-web-devicons'.get_icons_by_desktop_environment()
require'nvim-web-devicons'.get_icons_by_window_manager()
```

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

You can override the default icon with the `set_default_icon(icon, color, cterm_color)` function:

```lua
require("nvim-web-devicons").set_default_icon('', '#6d8086', 65)
```

### Getting and setting icons by filetype

You can get the icon and colors associated with a filetype using the `by_filetype` functions:

```lua
require("nvim-web-devicons").get_icon_by_filetype(filetype, opts)
require("nvim-web-devicons").get_icon_colors_by_filetype(filetype, opts)
require("nvim-web-devicons").get_icon_color_by_filetype(filetype, opts)
require("nvim-web-devicons").get_icon_cterm_color_by_filetype(filetype, opts)
```

or set the icon to use for a filetype with:

```lua
require("nvim-web-devicons").set_icon_by_filetype { cpp = "c", pandoc = "md", }
```

These functions are the same as their counterparts without the `_by_filetype` suffix,
but they take a filetype instead of a name/extension.

You can also use `get_icon_name_by_filetype(filetype)` to get the icon name associated with the filetype.

## Known Issues

### My `setup` Overrides Are Not Applied

*Cause:* A plugin may be calling nvim-web-devicons `setup` before you do. Your `setup` call will be ignored.

*Workaround:* Call nvim-web-devicons `setup` before the plugin's own `setup`.

### Windows and WSL not rendering icons properly on some terminals

On Windows and WSL, it is possible that the icons are not rendered properly when
using a terminal that relies on Windows' default system libraries. An example
of this is Alacritty ([#271](https://github.com/nvim-tree/nvim-web-devicons/issues/271#issuecomment-2081280928)).
Other terminals (e.g. Windows Terminal, and WezTerm) do no have this issue, as
they ship newer versions of these libraries. More precisely, they use newer
versions of `conpty.dll` and `OpenConsole.exe`. So, as a workaround to the
rendering issue, you need to make your terminal use these newer files. Whether
this is possible depends on the terminal you are using. Please refer to the
terminal's documentation for this.

In the specific case of Alacritty, you need to place up-to-date `conpty.dll` and
`OpenConsole.exe` files in your `PATH`. Microsoft does not provide these files
directly, but you can get them from other terminal emulators that ship them.

## Contributing

PRs are always welcome! Please see [CONTRIBUTING](CONTRIBUTING.md)
