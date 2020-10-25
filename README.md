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
 -- takes precedence over `get_icon` options
 default = true;
}
```

### Get Icon

Get the icon for a given file by passing in the `name`, the `extension` and an _optional_ options `table`.
The name is passed in to check for an exact match e.g. `.bashrc` if there is no exact name match the extension
is used.

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
