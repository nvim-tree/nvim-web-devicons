VIM_COLORTEMPLATE_VERSION = 2.2.3
VIM_MINI_ALIGN_VERSION = 0.14.0

all: generate style-check lint filetypes

generate: vim-colortemplate mini-align
	rm -f lua/nvim-web-devicons/light/icons_by_*.lua
	cp lua/nvim-web-devicons/default/icons_by_*.lua lua/nvim-web-devicons/light/
	nvim \
		--clean \
		--headless \
		--cmd "set rtp^=vim-colortemplate" \
		--cmd "set rtp^=mini-align" \
		-c 'source scripts/generate.lua' \
		-c 'source scripts/align.lua' \
		-c 'source scripts/sort_filetypes.lua' \
		-c 'qall'

colors-check: generate
	git diff --exit-code lua/nvim-web-devicons/default/
	git diff --exit-code lua/nvim-web-devicons/light/
	git diff --exit-code lua/nvim-web-devicons/filetypes.lua

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

.PHONY: all clean generate colors-check style-check style-fix lint filetypes
