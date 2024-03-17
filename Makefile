VIM_COLORTEMPLATE_VERSION = 2.2.3

all: colors style-check lint

# generate lua/nvim-web-devicons/icons-*.lua from src/by-*.lua
icons: src/glyphnames.lua
	lua scripts/gen-icons.lua

# TODO #192 remove before merge
gen-check: colors
	lua scripts/gen-check.lua

# only needed when updating nerd font classes
src/glyphnames.lua: src/glyphnames.json
	yq '.METADATA' $(^) -oy
	yq 'del(.METADATA)' $(^) -ol > $(@)

colors: vim-colortemplate icons
	nvim \
		--clean \
		--headless \
		--cmd "set rtp^=vim-colortemplate" \
		-c 'source scripts/generate_colors.lua' \
		-c 'qall'

colors-check: colors
	git diff --exit-code lua/nvim-web-devicons/icons-light.lua

vim-colortemplate:
	mkdir -p vim-colortemplate
	curl -L https://github.com/lifepillar/vim-colortemplate/archive/refs/tags/v$(VIM_COLORTEMPLATE_VERSION).tar.gz | tar zx --directory vim-colortemplate --strip-components=1

style-check:
	stylua . --check

style-fix:
	stylua .

lint:
	luacheck lua scripts

clean:
	rm -rf vim-colortemplate

.PHONY: all icons colors style-check style-fix lint
