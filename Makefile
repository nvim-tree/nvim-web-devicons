colors:
	nvim --headless -c 'source scripts/generate_colors.lua' -c 'qall'

all: colors
