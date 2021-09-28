
-- Reference
-- gui00 -> Default Background
-- gui01 -> Lighter Background (Used for status bars, line number and folding marks)
-- gui02 -> Selection Background
-- gui03 -> Comments, Invisibles, Line Highlighting
-- gui04 -> Dark Foreground (Used for status bars)
-- gui05 -> Default Foreground, Caret, Delimiters, Operators
-- gui06 -> Light Foreground (Not often used)
-- gui07 -> Light Background (Not often used)
-- gui08 -> Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted (red)
-- gui09 -> Integers, Boolean, Constants, XML Attributes, Markup Link Url (orange)
-- gui0A -> Classes, Markup Bold, Search Text Background (yellow)
-- gui0B -> Strings, Inherited Class, Markup Code, Diff Inserted (green)
-- gui0C -> Support, Regular Expressions, Escape Characters, Markup Quotes (cyan)
-- gui0D -> Functions, Methods, Attribute IDs, Headings (blue)
-- gui0E -> Keywords, Storage, Selector, Markup Italic, Diff Changed (magenta)
-- gui0F -> Deprecated, Opening/Closing Embedded Language Tags, e.g. `<?php ?>` (pink)


local light = {
    gui00           = '#E6E6F1',
    gui01           = '#D5D4E0',
    gui02           = '#3D4059',
    gui03           = '#CCCBD9',
    gui04           = '#7F8E9D',
    gui05           = '#708190',
    gui06           = '#9CA6B9',
    gui07           = '#D9DBE6',
    gui08           = '#C34864',
    gui09           = '#D66652',
    gui0A           = '#DE956F',
    gui0B           = '#7D9685',
    gui0C           = '#829FB0',
    gui0D           = '#6A8CBC',
    gui0E           = '#8787BF',
    gui0F           = '#E06B6B',
}

local dark = {
    gui00          = "#20202A",
    gui01          = "#2c2e3e",
    gui02          = "#3D4059",
    gui03          = "#313449",
    gui04          = "#63718b",
    gui05          = "#ced4df",
    gui06          = "#414560",
    gui07          = "#63718b",
    gui08          = "#ebb9b9",
    gui09          = "#e8cca7",
    gui0A          = "#e6dfb8",
    gui0B          = "#b1dba4",
    gui0C          = "#b8dceb",
    gui0D          = "#a3b8ef",
    gui0E          = "#f6bbe7",
    gui0F          = "#eAc1c1",
}

-- Options: light, dark
Style = "light"

if Style == "light" then
    Colors = light
elseif Style == "dark" then
    Colors = dark
end

return Colors


