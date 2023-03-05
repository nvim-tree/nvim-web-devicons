# Contributing to `nvim-web-devicons`

Thank you for your contribution!

## Name

Please name your commits and the PR simply e.g.

add .tex
update makefile icon
update .kt colors

## Generate Colors

Add or update icons in `scripts/nvim-web-devicons.lua`.

Only `color` is necessary; `cterm_color` will be generated.

Add [vim-colortemplate](https://github.com/lifepillar/vim-colortemplate) to &runtimepath. The easiest way to do this is via your package manager.

Run `make`. This will:
- Update `cterm_color` based on `color`
- Generate `nvim-web-devicons-light.lua`

Please commit both `nvim-web-devicons.lua` and `nvim-web-devicons-light.lua`

## Styling And Format

TODO @alex-courtis

## Pull Request

Please reference any issues in the description e.g. "resolves #1234".

Please check "allow edits by maintainers" to allow nvim-web-devicons maintainers to make small changes such as documentation tweaks.

## Documentation

When modifying or adding API, please update [Usage](README.md#Usage)
