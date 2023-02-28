-- Plugin lifepillar/vim-colortemplate must be available on &runtimepath
--
-- The current working directory must be set to the repo root
-- It's best to have the main file already open in another window

-- IMPORTANT: the `cterm_color` key must always be below the `color` key of the
--            same icon. Currently they are.

-- :source this file when ready

local fn, file = vim.fn, ''

if vim.o.background == "light" then
  file = "lua/nvim-web-devicons-light.lua"
else
  file = "lua/nvim-web-devicons.lua"
end

vim.cmd("drop " .. file)

if not fn.bufname():find(vim.pesc(file) .. "$") then
  error("The file could not be found!")
end

print("Starting!")

-- move to first line
vim.cmd(":1")
local last = 0

while true do
  local cur = fn.search("^\\s*color =")
  if cur < last then
    break
  end
  last = cur
  local color = fn.getline("."):match("%#......")
  if fn.search("^\\s*cterm_color") < cur then
    break
  end
  if fn.getline("."):find("%d") then
    fn.setline(".", fn.substitute(fn.getline("."), '\\d\\+', function(matches)
      return tostring(vim.fn["colortemplate#colorspace#approx"](color).index)
    end, ""))
  end
end

vim.cmd(":1")
vim.cmd("wall")
print("Finished!")
