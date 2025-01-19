#!/usr/bin/env bash

# Iterate over the elements of icons_by_file_extension and check if there are missed filetypes.
# $VIMRUNTIME specifies neovim runtime path, defaults to "/usr/share/nvim/runtime" if unset.

: "${VIMRUNTIME:=/usr/share/nvim/runtime}"

exit_value=0

while read -r key; do
  # Search for the key in the main file
  line=$(grep -F "\"$key\"" "lua/nvim-web-devicons.lua")
  if [ -z "$line" ]; then
    [ -f "${VIMRUNTIME}/syntax/$key.vim" ] &&
      echo -e "\e[33mPlease add \"$key\" to filetypes Lua table.\e[0m" &&
      exit_value=1
  fi
done < <(
  sed -nr '/^local icons_by_file_extension/,/^}/!d; s/.*\["(.*)"\].*/\1/p' lua/nvim-web-devicons/icons-default.lua
)

exit $exit_value
