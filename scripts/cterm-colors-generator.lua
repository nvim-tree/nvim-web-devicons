-- vim-colortemplate is needed
-- the current working directory must be set to the repo root
-- it's best to have the main file already open in another window

-- IMPORTANT: the `cterm_color` key must always be below the `color` key of the
--            same icon. Currently they are.

-- :source this file when ready

local fn = vim.fn

vim.cmd("packadd vim-colortemplate")
vim.cmd("drop lua/nvim-web-devicons.lua")

if not fn.bufname():find("nvim%-web%-devicons%.lua$") then
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
print("Finished!")
