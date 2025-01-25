VIM_COLORTEMPLATE_VERSION = 2.2.3
VIM_MINI_ALIGN_VERSION = 0.14.0

all: colors style-check lint filetypes

colors: vim-colortemplate mini-align
	rm lua/nvim-web-devicons/icons-light.lua
	cp lua/nvim-web-devicons/icons-default.lua lua/nvim-web-devicons/icons-light.lua
	nvim \
		--clean \
		--headless \
		--cmd "set rtp^=vim-colortemplate" \
		--cmd "set rtp^=mini-align" \
		-c 'source scripts/generate_colors.lua' \
		-c 'source scripts/align_spaces.lua' \
		-c 'qall'

colors-check: colors
	git diff --exit-code lua/nvim-web-devicons/icons-default.lua
	git diff --exit-code lua/nvim-web-devicons/icons-light.lua

vim-colortemplate:
	mkdir -p vim-colortemplate
	curl -L https://github.com/lifepillar/vim-colortemplate/archive/refs/tags/v$(VIM_COLORTEMPLATE_VERSION).tar.gz | tar zx --directory vim-colortemplate --strip-components=1

mini-align:
	mkdir -p mini-align
	curl -L https://github.com/echasnovski/mini.align/archive/refs/tags/v$(VIM_MINI_ALIGN_VERSION).tar.gz | tar zx --directory mini-align --strip-components=1

style-check:
	stylua . --check

style-fix:
	stylua .

lint:
	luacheck lua scripts

filetypes:
	./scripts/filetypes.sh

clean:
	rm -rf vim-colortemplate
	rm -rf mini-align

.PHONY: all colors style-check style-fix lint filetypes
