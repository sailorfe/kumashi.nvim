-- shipwright_build.lua

local colorscheme = require("lua.kumashi.theme")
local lushwright = require("shipwright.transform.lush")

run(colorscheme,
  lushwright.to_vimscript,
  {append, {"set background=dark", "let g:colors_name=\"kumashi\""}},
  {overwrite, "colors/kumashi.vim"})
