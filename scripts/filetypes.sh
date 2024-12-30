#!/usr/bin/env bash

# Iterate over the elements of icons_by_file_extension and check if there are missed filetypes.
# $VIMRUNTIME specifies neovim runtime path, defaults to "/usr/share/nvim/runtime" if unset.

if [ -z "${VIMRUNTIME}" ]; then
	export VIMRUNTIME="/usr/share/nvim/runtime"
fi

in_section=false

echo "VIMRUNTIME=${VIMRUNTIME}"
ls "${VIMRUNTIME}/syntax"

while IFS= read -r line; do
	if [[ $line =~ ^local\ icons_by_file_extension\ =\ \{$ ]]; then
		in_section=true
	elif [[ $line =~ ^\}$ ]]; then
		in_section=false
	fi

	if $in_section && [[ $line =~ \[\"(.+)\"\] ]]; then
		key="${BASH_REMATCH[1]}"
		# Search for the key in the main file
		line=$(grep -F "\"$key\"" "lua/nvim-web-devicons.lua")
		if [ -n "$line" ]; then
			continue
		else
			[ -f "${VIMRUNTIME}/syntax/$key.vim" ] &&
				echo -e "\e[33mPlease add \"$key\" to filetypes Lua table.\e[0m"
		fi
	fi
done <"lua/nvim-web-devicons/icons-default.lua"
