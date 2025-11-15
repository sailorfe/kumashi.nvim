local GPP = {}

function GPP.load()
  vim.cmd('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end
  vim.o.termguicolors = true
  vim.g.colors_name = 'kumashi'

  require('lush')(require('kumashi.theme'))
end

return GPP
