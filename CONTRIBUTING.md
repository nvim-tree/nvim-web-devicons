# Contributing to `nvim-web-devicons`

Thank you for your contribution!

## Name

Please name your commits and the PR simply e.g.

    feat: add tex
    fix: makefile icon
    fix: update kt colors

## Prerequisites

### Style And Lint

```sh
cargo install stylua
luarocks --local install luacheck
```
or 
```sh
pacman -S stylua
pacman -S luacheck
```

### Building

Generating icon lua code:
```sh
luarocks --local install inspect
```
or
```sh
yay -S lua-inspect
```

### Optional

[yq](https://github.com/mikefarah/yq) for updating nerd-fonts `glyphnames.lua`

```sh
pacman -S go-yq
```

## Building

Following your changes, please run:

```sh
make
```

This will:
1. Generate `lua/nvim-web-devicons/icons-*.lua`
1. `git clone --depth 1 https://github.com/lifepillar/vim-colortemplate.git vim-colortemplate` if necessary
1. Generate cterm colors
1. Generate light color variants
1. Check style
1. Lint

You can automatically fix any style issues via:
```sh
make style-fix
```

## Generate Colors

Add or update icons in `src/by-*.lua`

There are three tables in which icons can be added:
1. name: the icon is for a file that is always named that way, for example `.gitconfig`
1. ext: the icon is for all files with that extension
1. os: icon for an os or variant

Each icon must have the following (this is an example):

```lua
[".gitconfig"] = {
    class = "seti-config",
    color = "#41535b",
    name = "GitConfig",
},
```

- `class` must be a vailid nerd-font class, see [cheat sheet](https://www.nerdfonts.com/cheat-sheet)
- `color` must contain a color in the html notation

Ensure your current working directory is the repo root.
Run `make`. This will:
- Generate `lua/nvim-web-devicons/icons-*.lua` with an `icon` and `cterm_color`
- Generate `lua/nvim-web-devicons/icons-light.lua` from the above, with light `color` and `cterm_color`

Example generated icon:
```lua
[".gitconfig"] = {
    class = "seti-config",
    color = "#41535b",
    cterm_color = "239",
    icon = "",
    name = "GitConfig"
},
```

Please commit `src/by-*.lua`, `lua/nvim-web-devicons/icons-default.lua` and `lua/nvim-web-devicons/icons-light.lua`

## Test

Run `:NvimWebDeviconsHiTest` to view the icons and their highlighting.

Start neovim with `TERM=xterm-256color nvim ...` to test cterm.

Check with `&background` `dark` and `light`

## Pull Request

Please reference any issues in the description e.g. "resolves #1234".

Please check "allow edits by maintainers" to allow nvim-web-devicons maintainers to make small changes such as documentation tweaks.

## Documentation

When modifying or adding API, please update [Usage](README.md#Usage)
