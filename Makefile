NERD_FONTS_VERSION = 3.1.1
VIM_COLORTEMPLATE_VERSION = 2.2.3

all: colors style-check lint

colors: nerd-fonts vim-colortemplate
	nvim \
		--clean \
		--headless \
		--cmd "set rtp^=vim-colortemplate" \
		--cmd "set rtp^=." \
		-l "lua/nvim-web-devicons/_gen/init.lua"

colors-check: colors
	git diff --exit-code lua/nvim-web-devicons/filetypes.lua
	git diff --exit-code lua/nvim-web-devicons/icons-default.lua
	git diff --exit-code lua/nvim-web-devicons/icons-light.lua

vim-colortemplate:
	git clone --depth 1 -b v$(VIM_COLORTEMPLATE_VERSION) https://github.com/lifepillar/vim-colortemplate.git vim-colortemplate

nerd-fonts:
	git clone --depth 1 --filter blob:none --sparse -b v$(NERD_FONTS_VERSION) https://github.com/ryanoasis/nerd-fonts.git nerd-fonts

style-check:
	stylua . --check

style-fix:
	stylua .

lint:
	luacheck lua

clean:
	rm -rf nerd-fonts vim-colortemplate

.PHONY: all colors style-check style-fix lint
