# Nvim-web-devicons

A `lua` fork of [vim-devicons]()

## Usage

### Setup

This adds all the highlight groups for the devicons
i.e. it calls `highlight IconNameDevicon guifg='<color>'` for all icons
this might need to be re-called in a `Colorscheme` to re-apply cleared highlights
if the color scheme changes

```lua
require'nvim-lua-devicons'.setup()
```

### Get icon

Get the icon for a given file by passing in the `name`, the `extension` and an _optional_ options `table`.
The name is passed in to check for an exact match e.g. `.bashrc` if there is no exact name match the extension
is used.

```lua
require'nvim-lua-devicons'.get_icon(filename, extension, options)
```

The optional `options` argument can used to change how the plugin works the keys include
`default = <boolean>`. If the default key is set to true this function will return a default
if there is no matching icon
e.g.

```lua
require'nvim-lua-devicons'.get_icon(filename, extension, { default = true })
```
