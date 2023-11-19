all: colors style-check lint

colors: vim-colortemplate
	nvim \
		--clean \
		--headless \
		--cmd "set rtp^=vim-colortemplate" \
		-c 'source scripts/generate_colors.lua' \
		-c 'qall'

colors-check: colors
	git diff --exit-code lua/nvim-web-devicons/icons-light.lua

vim-colortemplate:
	git clone --depth 1 https://github.com/lifepillar/vim-colortemplate.git vim-colortemplate

style-check:
	stylua . --check

style-fix:
	stylua .

lint:
	luacheck lua scripts

.PHONY: all colors style-check style-fix lint
