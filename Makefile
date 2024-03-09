VIM_COLORTEMPLATE_VERSION = 2.2.3

all: colors style-check lint

colors: vim-colortemplate
	nvim \
		--clean \
		--headless \
		--cmd "set rtp^=vim-colortemplate" \
		--cmd "set rtp^=." \
		-l "lua/nvim-web-devicons/_gen/init.lua"

colors-check: colors
	git diff --exit-code lua/nvim-web-devicons/icons-light.lua

vim-colortemplate:
	git clone --depth 1 -b v$(VIM_COLORTEMPLATE_VERSION) https://github.com/lifepillar/vim-colortemplate.git vim-colortemplate

style-check:
	stylua . --check

style-fix:
	stylua .

lint:
	luacheck lua scripts

clean:
	rm -rf vim-colortemplate

.PHONY: all colors style-check style-fix lint
