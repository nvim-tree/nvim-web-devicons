# Contributing to `nvim-web-devicons`

Thank you for your contribution!

## Prerequisites

Code is formatted using stylua and linted using luacheck.

You can install these with:
```sh
cargo install stylua
luarocks install luacheck
```

or via your OS package manager e.g. Arch linux:
```sh
pacman -S stylua
pacman -S luacheck
```

## Adding / Updating icons

All datas of icons are defined in `lua/nvim-web-devicons/_gen/icons.lua`.

This file returns a table with keys and values.
The keys are strings that are used as part of the highlight name.
The values are tables that contain the following fields:

- **color** (`string`): color for the dark theme in RGB hex code
- **icon** (`string`): icon
- **extension** (optional, `string[]`): file extensions (e.g. `lua`, `py`)
- **file** (optional, `string[]`): file names (e.g. `dockerfile`, `.gitignore`)
- **filetype** (optional, `string[]`): filetypes (e.g. `text`, `checkhealth`)
- **os** (optional, `string[]`): OS name (e.g. `apple`, `nixos`)

Please ensure icons are ordered alphabetically by key, to prevent merge conflicts.

## Building

Following your changes, please run:

```sh
make
```

This will:
1. `git clone --depth 1 https://github.com/lifepillar/vim-colortemplate.git vim-colortemplate` if necessary
2. Generate following files
    - `lua/nvim-web-devicons/filetypes.lua`
    - `lua/nvim-web-devicons/icons-default.lua`
    - `lua/nvim-web-devicons/icons-light.lua`
3. Check style
4. Lint

You can automatically fix any style issues via:
```sh
make style-fix
```

## Testing

Run `:NvimWebDeviconsHiTest` to view the icons and their highlighting.

Start neovim with `TERM=xterm-256color nvim ...` to test cterm.

Check with `&background` `dark` and `light`

## Documentation

When modifying or adding API, please update [Usage](README.md#Usage)

## Commit

Please name your commits and the PR simply e.g.

```
add .tex
update makefile icon
update .kt colors
```

## Pull Request

Please reference any issues in the description e.g. "resolves #1234".

Please check "allow edits by maintainers" to allow nvim-web-devicons maintainers to make small changes such as documentation tweaks.
