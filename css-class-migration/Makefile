check: icons
	lua gen-check.lua

icons: glyphs
	lua gen-icons.lua

glyphs: glyphnames.lua
	lua gen-glyphs.lua

glyphnames.lua: glyphnames.json
	yq '.METADATA' glyphnames.json -oy
	yq 'del(.METADATA)' glyphnames.json -ol > glyphnames.lua

clean:
	rm -f glyphnames.lua glyphs-by*.lua icons-by*.lua

.PHONY: icons glyphs clean
