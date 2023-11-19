all: colors style-check lint

colors: /tmp/vim-colortemplate
	nvim \
		--clean \
		--headless \
		--cmd "set rtp^=/tmp/vim-colortemplate" \
		-c 'source scripts/generate_colors.lua' \
		-c 'qall'

/tmp/vim-colortemplate:
	git clone https://github.com/lifepillar/vim-colortemplate.git /tmp/vim-colortemplate

style-check:
	stylua . --check

style-fix:
	stylua .

lint:
	luacheck .

.PHONY: all colors style-check style-fix lint
